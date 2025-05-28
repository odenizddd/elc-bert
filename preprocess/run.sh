# Activate virtual environment (adjust path if needed)
source ../myenv/Scripts/activate

mkdir -p ../data/processed

python aochildes.py
python bnc_spoken.py
python cbt.py
python children_stories.py
python gutenberg.py
python open_subtitles.py
python qed.py
python simple_wikipedia.py
python switchboard.py
python wikipedia.py

cat ../data/processed/aochildes.txt ../data/processed/bnc_spoken.txt ../data/processed/cbt.txt ../data/processed/children_stories.txt ../data/processed/gutenberg.txt ../data/processed/open_subtitles.txt ../data/processed/qed.txt ../data/processed/simple_wikipedia.txt ../data/processed/switchboard.txt ../data/processed/wikipedia.txt > ../data/processed/all.txt

python segment.py