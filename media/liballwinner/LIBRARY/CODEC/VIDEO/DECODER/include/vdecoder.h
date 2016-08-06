
#ifndef VDECODER_H
#define VDECODER_H

#include <unistd.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif



typedef uintptr_t size_addr;




enum EVIDEOCODECFORMAT
{
    VIDEO_CODEC_FORMAT_UNKNOWN          = 0,
    VIDEO_CODEC_FORMAT_MJPEG            = 0x101,
    VIDEO_CODEC_FORMAT_MPEG1            = 0x102,
    VIDEO_CODEC_FORMAT_MPEG2            = 0x103,
    VIDEO_CODEC_FORMAT_MPEG4            = 0x104,
    VIDEO_CODEC_FORMAT_MSMPEG4V1        = 0x105,
    VIDEO_CODEC_FORMAT_MSMPEG4V2        = 0x106,
    VIDEO_CODEC_FORMAT_DIVX3            = 0x107,
    VIDEO_CODEC_FORMAT_DIVX4            = 0x108,
    VIDEO_CODEC_FORMAT_DIVX5            = 0x109,
    VIDEO_CODEC_FORMAT_XVID             = 0x10a,
    VIDEO_CODEC_FORMAT_H263             = 0x10b,
    VIDEO_CODEC_FORMAT_SORENSSON_H263   = 0x10c,
    VIDEO_CODEC_FORMAT_RXG2             = 0x10d,
    VIDEO_CODEC_FORMAT_WMV1             = 0x10e,
    VIDEO_CODEC_FORMAT_WMV2             = 0x10f,
    VIDEO_CODEC_FORMAT_WMV3             = 0x110,
    VIDEO_CODEC_FORMAT_VP6              = 0x111,
    VIDEO_CODEC_FORMAT_VP8              = 0x112,
    VIDEO_CODEC_FORMAT_VP9              = 0x113,
    VIDEO_CODEC_FORMAT_RX               = 0x114,
    VIDEO_CODEC_FORMAT_H264             = 0x115,
    VIDEO_CODEC_FORMAT_H265             = 0x116,
    VIDEO_CODEC_FORMAT_AVS              = 0x117,
    
    VIDEO_CODEC_FORMAT_JPEG             = 0x118, // only for jpeg picture decode
    VIDEO_CODEC_FORMAT_MAX              = VIDEO_CODEC_FORMAT_JPEG,
    VIDEO_CODEC_FORMAT_MIN              = VIDEO_CODEC_FORMAT_MJPEG,
};

enum EPIXELFORMAT
{
    PIXEL_FORMAT_DEFAULT            = 0,
    
    PIXEL_FORMAT_YUV_PLANER_420     = 1,
    PIXEL_FORMAT_YUV_PLANER_422     = 2,
    PIXEL_FORMAT_YUV_PLANER_444     = 3,
    
    PIXEL_FORMAT_YV12               = 4,
    PIXEL_FORMAT_NV21               = 5,
    PIXEL_FORMAT_NV12               = 6,
    PIXEL_FORMAT_YUV_MB32_420       = 7,
    PIXEL_FORMAT_YUV_MB32_422       = 8,
    PIXEL_FORMAT_YUV_MB32_444       = 9,
    
    PIXEL_FORMAT_RGBA				= 10,
    PIXEL_FORMAT_ARGB				= 11,
    PIXEL_FORMAT_ABGR				= 12,
    PIXEL_FORMAT_BGRA				= 13,

    PIXEL_FORMAT_YUYV				= 14,
    PIXEL_FORMAT_YVYU				= 15,
    PIXEL_FORMAT_UYVY				= 16,
    PIXEL_FORMAT_VYUY				= 17,

    PIXEL_FORMAT_PLANARUV_422		= 18,
    PIXEL_FORMAT_PLANARVU_422		= 19,
    PIXEL_FORMAT_PLANARUV_444		= 20,
    PIXEL_FORMAT_PLANARVU_444		= 21,

    PIXEL_FORMAT_MIN = PIXEL_FORMAT_DEFAULT,
    PIXEL_FORMAT_MAX = PIXEL_FORMAT_PLANARVU_444,
};

enum EVDECODERESULT
{
    VDECODE_RESULT_UNSUPPORTED       = -1,
    VDECODE_RESULT_OK                = 0,
    VDECODE_RESULT_FRAME_DECODED     = 1,
    VDECODE_RESULT_CONTINUE          = 2,
    VDECODE_RESULT_KEYFRAME_DECODED  = 3,
    VDECODE_RESULT_NO_FRAME_BUFFER   = 4,
    VDECODE_RESULT_NO_BITSTREAM      = 5,
    VDECODE_RESULT_RESOLUTION_CHANGE = 6,
    
    VDECODE_RESULT_MIN = VDECODE_RESULT_UNSUPPORTED,
    VDECODE_RESULT_MAX = VDECODE_RESULT_RESOLUTION_CHANGE,
};

//*for new display
typedef struct FBMBUFINFO
{
	int nBufNum;
	int nBufWidth;
	int nBufHeight;
	int ePixelFormat;
	int nAlignValue;
    int bProgressiveFlag;
    int bIsSoftDecoderFlag;
}FbmBufInfo;

typedef struct VIDEOSTREAMINFO
{
    int   eCodecFormat;
    int   nWidth;
    int   nHeight;
    int   nFrameRate;
    int   nFrameDuration;
    int   nAspectRatio;
    int   bIs3DStream;
    int   nCodecSpecificDataLen;
    char* pCodecSpecificData;
    int   bSecureStreamFlag;
    int   bSecureStreamFlagLevel1;
	int   bIsFramePackage; /* 1: frame package;  0: stream package */
	int   h265ReferencePictureNum;
	int   bReOpenEngine;
	int   bIsFrameCtsTestFlag;
}VideoStreamInfo;

typedef struct VCONFIG
{
    int bScaleDownEn;
    int bRotationEn;
    int bSecOutputEn;
    int nHorizonScaleDownRatio;
    int nVerticalScaleDownRatio;
    int nSecHorizonScaleDownRatio;
    int nSecVerticalScaleDownRatio;
    int nRotateDegree;
    int bThumbnailMode;
    int eOutputPixelFormat;
    int eSecOutputPixelFormat;
    int bNoBFrames;
    int bDisable3D;
    int bSupportMaf;
    int bDispErrorFrame;
    int nVbvBufferSize;
    int bSecureosEn;
    int  bGpuBufValid;
    int  nAlignStride;
    int  bIsSoftDecoderFlag;
    int  bVirMallocSbm;
}VConfig;

typedef struct VIDEOSTREAMDATAINFO
{
    char*   pData;
    int     nLength;
    int64_t nPts;
    int64_t nPcr;
    int     bIsFirstPart;
    int     bIsLastPart;
    int     nID;
    int     nStreamIndex;
    int     bValid;
    unsigned int     bVideoInfoFlag;
    void*   pVideoInfo;
}VideoStreamDataInfo;


typedef struct VIDEOPICTURE
{
    int     nID;
    int     nStreamIndex;
    int     ePixelFormat;
    int     nWidth;
    int     nHeight;
    int     nLineStride;
    int     nTopOffset;
    int     nLeftOffset;
    int     nBottomOffset;
    int     nRightOffset;
    int     nFrameRate;
    int     nAspectRatio;
    int     bIsProgressive;
    int     bTopFieldFirst;
    int     bRepeatTopField;
    int64_t nPts;
    int64_t nPcr;
    char*   pData0;
    char*   pData1;
    char*   pData2;
    char*   pData3;
    int     bMafValid;
    char*   pMafData;
    int     nMafFlagStride;
    int     bPreFrmValid;
    int     nBufId;
    uintptr_t phyYBufAddr;
    uintptr_t phyCBufAddr;
    void*   pPrivate;
    int     nBufStatus;
}VideoPicture;

typedef struct VIDEOFBMINFO
{
	unsigned int         nValidBufNum;
	void*                pFbmFirst;
	void*                pFbmSecond;
	FbmBufInfo           pFbmBufInfo;
	unsigned int         bIs3DStream;
	VideoPicture*        pMajorDispFrame;
	VideoPicture*        pMajorDecoderFrame;
	unsigned int         nMinorYBufOffset;
    unsigned int         nMinorCBufOffset;
	int   				 bIsFrameCtsTestFlag;
}VideoFbmInfo;



typedef void* VideoDecoder;

VideoDecoder* CreateVideoDecoder(void);

void DestroyVideoDecoder(VideoDecoder* pDecoder);

int InitializeVideoDecoder(VideoDecoder* pDecoder, VideoStreamInfo* pVideoInfo, VConfig* pVconfig);


void ResetVideoDecoder(VideoDecoder* pDecoder);

int DecodeVideoStream(VideoDecoder* pDecoder, 
                      int           bEndOfStream,
                      int           bDecodeKeyFrameOnly,
                      int           bDropBFrameIfDelay,
                      int64_t       nCurrentTimeUs);

int DecoderSetSpecialData(VideoDecoder* pDecoder, void *pArg);

int GetVideoStreamInfo(VideoDecoder* pDecoder, VideoStreamInfo* pVideoInfo);

int RequestVideoStreamBuffer(VideoDecoder* pDecoder,
                             int           nRequireSize,
                             char**        ppBuf,
                             int*          pBufSize,
                             char**        ppRingBuf,
                             int*          pRingBufSize,
                             int           nStreamBufIndex);

int SubmitVideoStreamData(VideoDecoder*        pDecoder,
                          VideoStreamDataInfo* pDataInfo,
                          int                  nStreamBufIndex);

int VideoStreamBufferSize(VideoDecoder* pDecoder, int nStreamBufIndex);

int VideoStreamDataSize(VideoDecoder* pDecoder, int nStreamBufIndex);

int VideoStreamFrameNum(VideoDecoder* pDecoder, int nStreamBufIndex);
void* VideoStreamDataInfoPointer(VideoDecoder* pDecoder, int nStreamBufIndex);


VideoPicture* RequestPicture(VideoDecoder* pDecoder, int nStreamIndex);

int ReturnPicture(VideoDecoder* pDecoder, VideoPicture* pPicture);

VideoPicture* NextPictureInfo(VideoDecoder* pDecoder, int nStreamIndex);

int TotalPictureBufferNum(VideoDecoder* pDecoder, int nStreamIndex);

int EmptyPictureBufferNum(VideoDecoder* pDecoder, int nStreamIndex);

int ValidPictureNum(VideoDecoder* pDecoder, int nStreamIndex);

int ConfigHorizonScaleDownRatio(VideoDecoder* pDecoder, int nScaleDownRatio);

int ConfigVerticalScaleDownRatio(VideoDecoder* pDecoder, int nScaleDownRatio);

int ConfigRotation(VideoDecoder* pDecoder, int nRotateDegree);

int ConfigDeinterlace(VideoDecoder* pDecoder, int bDeinterlace);

int ConfigThumbnailMode(VideoDecoder* pDecoder, int bOpenThumbnailMode);

int ConfigOutputPicturePixelFormat(VideoDecoder* pDecoder, int ePixelFormat);

int ConfigNoBFrames(VideoDecoder* pDecoder, int bNoBFrames);

int ConfigDisable3D(VideoDecoder* pDecoder, int bDisable3D);

int ConfigVeMemoryThresh(VideoDecoder* pDecoder, int nMemoryThresh);

int ReopenVideoEngine(VideoDecoder* pDecoder, VConfig* pVConfig, VideoStreamInfo* pStreamInfo);

int RotatePicture(VideoPicture* pPictureIn, 
                  VideoPicture* pPictureOut, 
                  int           nRotateDegree,
                  int           nGpuYAlign,
                  int           nGpuCAlign);

int RotatePictureHw(VideoDecoder* pDecoder,
                    VideoPicture* pPictureIn, 
                    VideoPicture* pPictureOut, 
                    int           nRotateDegree);

VideoPicture* AllocatePictureBuffer(int nWidth, int nHeight, int nLineStride, int ePixelFormat);

int FreePictureBuffer(VideoPicture* pPicture);
char* VideoRequestSecureBuffer(VideoDecoder* pDecoder,int nBufferSize);

void VideoReleaseSecureBuffer(VideoDecoder* pDecoder,char* pBuf);

VideoPicture*  ReturnRelasePicture(VideoDecoder* pDecoder, VideoPicture* pVpicture, int bForbidUseFlag);
VideoPicture* RequestReleasePicture(VideoDecoder* pDecoder);
int SetVideoFbmBufRelease(VideoDecoder* pDecoder);
VideoPicture* SetVideoFbmBufAddress(VideoDecoder* pDecoder, VideoPicture* pVideoPicture,int bForbidUseFlag);
FbmBufInfo* GetVideoFbmBufInfo(VideoDecoder* pDecoder);
#ifdef __cplusplus
}
#endif

#endif

