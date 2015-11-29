#header_structure.rb

HEADER_STRUCTURE = {
  id:
  {
    bits: 16,
    default_value: 3
  },
  flags:
  {
    QR:
    {
      bits: 1,
      default_value: 0
    },
    OPCODE:
    {
      bits: 4,
      default_value: 0
    },
    AUTHORITATIVE_ANSWER:
    {
      bits: 1,
      default_value: 0
    },
    TRUNCATION:
    {
      bits: 1,
      default_value: 0
    },
    RECURSION_DESIRED:
    {
      bits: 1,
      default_value: 1
    },
    RECURSION_AVAILABLE:
    {
      bits: 1,
      default_value: 0
    },
    Z:
    {
      bits: 3,
      default_value: 0
    },
    RCODE:
    {
      bits: 4,
      default_value: 0
    }
  },
  question_count:
  {
    bits: 16
    default_value: 1
  },
  answer_resource_record:
  {
    bits: 16
    default_value: 0
  },
  authority_resource_record:
  {
    bits: 16
    default_value: 0
  },
  additional_resource_record:
  {
    bits: 16
    default_value: 0
  }
}
