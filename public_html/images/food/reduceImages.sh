uthor: Choomogo
#
# Script requires Image Magick:
# sudo apt-get install imagemagick
#
# usage: cd to the directory with the files.
# imageResize.sh
# imageResize.sh jpg 3


for image in ./*.${1}; do
	        res=$(convert $image -print "%wx%h\n" /dev/null)
		        width_old=$(echo $res | cut -d x -f1)
			        height_old=$(echo $res | cut -d x -f2)

				        width=$(expr $width_old / ${2})
					        height=$(expr $height_old / ${2})

						        echo "$(basename $image): ${width_old}x${height_old} \
								        -> ${width}x${height}"

							        mogrify -resize $width $(basename $image)
							done
