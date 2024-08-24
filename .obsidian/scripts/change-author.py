
# save this as 'rewrite-commits.py'
import sys

# Define the new author and committer information
OLD_EMAIL = b"bfeitknecht@student.ethz.ch"
NEW_NAME = b"bfeitknecht"
NEW_EMAIL = b"bfeitknecht@ethz.ch"

def rewrite_commit(metadata):
    if metadata.committer_email == OLD_EMAIL:
        metadata.committer_name = NEW_NAME
        metadata.committer_email = NEW_EMAIL
    if metadata.author_email == OLD_EMAIL:
        metadata.author_name = NEW_NAME
        metadata.author_email = NEW_EMAIL

# The entry point for the script
if __name__ == "__main__":
    import git_filter_repo as fr
    fr.RepoFilter(replace_commit=lambda commit: rewrite_commit(commit)).run()
