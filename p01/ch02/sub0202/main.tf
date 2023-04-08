terraform {
  required_version = ">= 1.2.0, < 2.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

resource "local_file" "literature" {
  filename = "alice-in-wonderland.txt"
  content  = <<-EOF
    It was much pleasanter at home,' thought poor Alice, 'when one wasn't always growing larger and smaller,
    and being ordered about by mice and rabbits. I almost wish I hadn't gone down that rabbit-hole — and yet —
    and yet — it's rather curious, you know, this sort of life! I do wonder what can have happened to me!
    When I used to read fairy-tales, I fancied that kind of thing never happened, and now here I am in the middle of one!
    There ought to be a book written about me, that there ought! And when I grow up, I'll write one.
  EOF
}
