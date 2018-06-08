module JournalsHelper
    
    def ensure_journal_entries_balance_to_zero
  # Use find_all instead of where since you might be dealing with unpersisted records
  credits_sum = journal_entries
                  .find_all(&:credit?)
                  .sum { |journal_entry| journal_entry.amount }
  debits_sum = journal_entries
                 .find_all(&:debit?)
                 .sum { |journal_entry| journal_entry.amount }

  return if credits_sum - debits_sum == 0

  errors.add(:base, "Journal entries must balance to zero")
  end
end
