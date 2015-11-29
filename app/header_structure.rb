#header_structure.rb

HEADER_STRUCTURE = {
  id:
  {
    bits: 16,
    default_value: 3
  },
  flags:
  {
    qr:
    {
      bits: 1,
      default_value: 0
    },
    opcode:
    {
      bits: 4,
      default_value: 0
    },
    authoritative_answer:
    {
      bits: 1,
      default_value: 0
    },
    truncation:
    {
      bits: 1,
      default_value: 0
    },
    recursion_desired:
    {
      bits: 1,
      default_value: 1
    },
    recursion_available:
    {
      bits: 1,
      default_value: 0
    },
    z:
    {
      bits: 3,
      default_value: 0
    },
    rcode:
    {
      bits: 4,
      default_value: 0
    }
  },
  question_count:
  {
    bits: 16,
    default_value: 1
  },
  answer_resource_record:
  {
    bits: 16,
    default_value: 0
  },
  authority_resource_record:
  {
    bits: 16,
    default_value: 0
  },
  additional_resource_record:
  {
    bits: 16,
    default_value: 0
  }
}
