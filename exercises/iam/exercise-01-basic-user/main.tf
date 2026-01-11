resource "aws_iam_user" "student" {
  name = "student-user"
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.student.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_access_key" "student_key" {
  user = aws_iam_user.student.name
}

