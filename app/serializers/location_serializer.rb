class LocationSerializer < LocationsSerializer
  attributes :accessibility, :email, :languages, :transportation, :is_primary, :virtual

  has_many :contacts
  has_one :mail_address
  has_many :regular_schedules
  has_many :holiday_schedules

  has_one :organization, serializer: SummarizedOrganizationSerializer

  def accessibility
    object.accessibility.map(&:text)
  end
end
