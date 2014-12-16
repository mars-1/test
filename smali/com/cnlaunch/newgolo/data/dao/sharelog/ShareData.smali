.class public Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;
.super Ljava/lang/Object;
.source "ShareData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$CircleType;,
        Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;,
        Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$OpResult;,
        Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;
    }
.end annotation


# static fields
.field public static final ADD_POSITION:I = 0x1

.field public static final ATTITUDE_ANGEL:I = 0x1

.field public static final ATTITUDE_GLAD:I = 0x3

.field public static final ATTITUDE_HAPPY:I = 0x0

.field public static final ATTITUDE_SAD:I = 0x2

.field public static final COLUMNSNUM:I = 0x4

.field public static final COLUMNSPACE:I = 0x14

.field public static final DEL_POSITION:I = 0x0

.field public static final DETAIL_RETURN_OP:I = 0x0

.field public static final EXTRA_FILE_CHOOSER:Ljava/lang/String; = "filePath"

.field public static final EXTRA_LOCATION_CHOOSER:I = 0x4

.field public static final EXTRA_OPEN_AREA_CHOOSER:I = 0x6

.field public static final EXTRA_PATH_CHOOSER:I = 0x8

.field public static final EXTRA_REMINDER_CHOOSER:I = 0x5

.field public static final FRIEND_BG_SP:Ljava/lang/String; = "shareFriendBackground"

.field public static final GET_MORE_MESSAGE:I = 0x1

.field public static final GET_NEW_MESSAGE:I = 0x0

.field public static final ISSHOW:Z = false

.field public static final ISTEST:Z = false

.field public static final MESSAGEIMAGE:Ljava/lang/String; = "messageImage"

.field public static final ORIGIN_IMAGE:I = 0x1

.field public static final PATH_GET_ACTION:Ljava/lang/String; = "PATH"

.field public static final PUBLIC_VOICE_TYPE:Ljava/lang/String; = "2"

.field public static final REFRESH_CONTACT:Ljava/lang/String; = "refresh_contact"

.field public static final REFRESH_CONTACT_VOER:Ljava/lang/String; = "refresh_contact_over"

.field public static final REFRESH_TASK:Ljava/lang/String; = "refresh_task"

.field public static final SAVE_FILE_MARK:I = 0x9

.field public static final SELECT_CITY_MARK:I = 0xa

.field public static final SELECT_FILE_MARK:I = 0x3

.field public static final SELECT_PHOTO_MARK:I = 0x2

.field public static final SELECT_REPORT_MARK:I = 0x7

.field public static final SEND_SHARE_BEG:I = -0x2

.field public static final SEND_SHARE_EXCEP:Ljava/lang/String; = "send_share_excep"

.field public static final SEND_SHARE_FAIL:I = -0x4

.field public static final SEND_SHARE_RESULT:Ljava/lang/String; = "send_share_result"

.field public static final SEND_SHARE_SIGN_VALID:Ljava/lang/String; = "send_share_sign_valid"

.field public static final SEND_SHARE_SUC:I = -0x3

.field public static final SENT_SHARE_IMAGE:Ljava/lang/String; = "sendShareImage"

.field public static final SHAREDRAFT:Ljava/lang/String; = "shareDraftID"

.field public static final SHAREFILE:Ljava/lang/String; = "sharedFile"

.field public static final SHAREID_SP:Ljava/lang/String; = "shareID"

.field public static final SHAREIMAGE:Ljava/lang/String; = "sharedImage"

.field public static final SHARELOCALOPEN:Ljava/lang/String; = "shareLocalOenUsers"

.field public static final SHAREMESG:Ljava/lang/String; = "sharedunread"

.field public static final SHAREMESGALL:Ljava/lang/String; = "all"

.field public static final SHARENIKENAME:Ljava/lang/String; = "sharedNickName"

.field public static final SHAREOPEN_SP:Ljava/lang/String; = "ShareOpenUser"

.field public static final SHARE_BCODE:Ljava/lang/String; = "bcodecity"

.field public static final SHARE_B_S_SP:Ljava/lang/String; = "shareBaiduToServer"

.field public static final SHARE_CITY:Ljava/lang/String; = "shareCityState"

.field public static final SHARE_CITY_REQUEST_KEY:Ljava/lang/String; = "MG1K6FYELYQjTor14k7A2OFN"

.field public static final SHARE_DAVID:Ljava/lang/String; = "&&&"

.field public static final SHARE_DEFALUT_CITY:Ljava/lang/String; = "0"

.field public static final SHARE_DEFALUT_IMAGE:Ljava/lang/String; = "share_default_bg"

.field public static final SHARE_DRAFT_ID:Ljava/lang/String; = "222"

.field public static final SHARE_DRIVE_REF:Ljava/lang/String; = "shareDriveRefreshTime"

.field public static final SHARE_FRIEND_REF:Ljava/lang/String; = "shareFriendRefreshTime"

.field public static final SHARE_HOME_PIC:Ljava/lang/String; = "shareHomePic"

.field public static final SHARE_HOT:Ljava/lang/String; = "ishot"

.field public static final SHARE_KEEP_REF:Ljava/lang/String; = "shareKeepRefreshTime"

.field public static final SHARE_LIFE_REF:Ljava/lang/String; = "shareLifeRefreshTime"

.field public static final SHARE_LOCAL_ID:Ljava/lang/String; = "111"

.field public static final SHARE_PERSONAL_REF:Ljava/lang/String; = "sharePersonalRefreshTime"

.field public static final SHARE_PUBLIC:Ljava/lang/String; = "public_share"

.field public static final SHARE_REFRESH_TIME:Ljava/lang/String; = "shareRefreshTime"

.field public static final SHARE_REPACK_REF:Ljava/lang/String; = "shareRepackRefreshTime"

.field public static final SHARE_SCODE:Ljava/lang/String; = "scodecity"

.field public static final SHARE_SNAME:Ljava/lang/String; = "snamecity"

.field public static final SHARE_STATE_SP:Ljava/lang/String; = "shareState"

.field public static final SHARE_S_B_SP:Ljava/lang/String; = "shareServerToBaidu"

.field public static final SHARE_TRAFFIC_REF:Ljava/lang/String; = "shareTrafficRefreshTime"

.field public static final SHARE_TYPE_TEXT:Ljava/lang/String; = "0"

.field public static final SHARE_TYPE_VOICE:Ljava/lang/String; = "1"

.field public static final SHARE_VERSION:Ljava/lang/String; = "1.1.1.9"

.field public static final SHARE_VOICE_READ:Ljava/lang/String; = "shareVoiceIsRead"

.field public static final SavePath:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "zxy-test"

.field public static final TAKE_PHOTO_MARK:I = 0x1

.field public static final THUMB_IMAGE:I = 0x0

.field public static final UPLOAD_FILE_TYPE:Ljava/lang/String; = "0"

.field public static final UPLOAD_IAMGE_TYPE:Ljava/lang/String; = "1"

.field public static final UPLOAD_VOICE_TYPE:Ljava/lang/String; = "2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cnlaunch/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;->SavePath:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
