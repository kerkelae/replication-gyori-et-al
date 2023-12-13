import os
import requests


if __name__ == "__main__":
    if not os.path.exists("2-shell_HARDI_preprocessed"):
        os.mkdir("2-shell_HARDI_preprocessed")

    for fname in [
        "dwi.bval",
        "dwi.bvec",
        "dwi.nii.gz",
        "brain_mask.nii.gz",
    ]:
        print(f"Downloading {fname}", end="\r")
        response = requests.get(
            f"https://filedn.eu/lnoC7HTxOBmbFVGPA5CvIF4/2-shell_HARDI_preprocessed/{fname}"
        )
        if response.status_code == 200:
            with open(os.path.join("2-shell_HARDI_preprocessed", fname), "wb") as file:
                file.write(response.content)
        else:
            print(f"Failed to download the file: {response.status_code}")
    print("Finished downloading the data")
