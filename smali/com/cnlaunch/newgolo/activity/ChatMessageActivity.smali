.class public Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.super Lcom/cnlaunch/golo3/message/BaseActivity;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatProRecorderStatusCallback;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$LoadMessageAsyn;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;,
        Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ProRecorderStatusCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_FILE:Ljava/lang/String; = "file"

.field private static final MIN_REC_TIME:I = 0x7d0

.field private static final MSG_DIAGNOSE_ASKFOR:I = 0x7

.field private static final MSG_DIAGNOSE_ERROR:I = 0x4

.field private static final MSG_DIAGNOSE_FAIL:I = 0x1

.field private static final MSG_DIAGNOSE_INIT:I = 0x2

.field private static final MSG_DIAGNOSE_NEEDUPDATE:I = 0x5

.field private static final MSG_DIAGNOSE_REFUSE:I = 0x3

.field private static final MSG_DIAGNOSE_START:I = 0x6

.field private static final MSG_DIAGNOSE_STOP:I = 0x8

.field private static final MSG_ERROR_FILE_LARGER:I = 0xa

.field private static final MSG_UPDATAUI:I = 0x9

.field private static final REQUEST_CODE_FORWARD:I = 0x8

.field private static final REQUEST_CODE_GET_FILE:I = 0x9

.field private static final REQUEST_CODE_SELECT_CARD:I = 0x6

.field private static final REQUEST_CODE_SELECT_FILE:I = 0x4

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x0

.field private static final REQUEST_CODE_SELECT_PLACE:I = 0x7

.field private static final REQUEST_CODE_SELECT_PREVIEW:I = 0x5

.field private static final REQUEST_CODE_SELECT_VIDEO:I = 0x2

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x1

.field private static final REQUEST_CODE_TAKE_VIDEO:I = 0x3

.field public static final ROOMID_1:Ljava/lang/String; = "1079500"

.field public static final TAG:Ljava/lang/String; = "MessageActivity"

.field private static exitFlag:Z

.field private static sendFlag:Z


# instance fields
.field private body:Landroid/view/View;

.field private currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private exit:Landroid/widget/ImageView;

.field private fAddBtn:Landroid/widget/Button;

.field private fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

.field private fContentTxt:Landroid/widget/EditText;

.field private fListView:Landroid/widget/ListView;

.field private fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

.field private fSend:Landroid/widget/Button;

.field private fSendBar:Landroid/view/View;

.field private fSendVoice:Landroid/widget/Button;

.field private fShowContentBtn:Landroid/widget/Button;

.field private fShowVoiceBtn:Landroid/widget/Button;

.field private fSubView:Landroid/view/ViewGroup;

.field private fViewPager:Landroid/support/v4/view/ViewPager;

.field private fVoiceBar:Landroid/view/View;

.field private fWarningTips:Landroid/view/View;

.field private floatWindowY:F

.field private halfFull:Landroid/widget/ImageView;

.field public imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

.field private isTouched:Z

.field private itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

.field private itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

.field private itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

.field private itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

.field private itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

.field private mAddBtn:Landroid/widget/Button;

.field private mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

.field private mContentTxt:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

.field private mListView:Landroid/widget/ListView;

.field private mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

.field private mReceiver:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;

.field private mSend:Landroid/widget/Button;

.field private mSendBar:Landroid/view/View;

.field private mSendVoice:Landroid/widget/Button;

.field private mShowContentBtn:Landroid/widget/Button;

.field private mShowVoiceBtn:Landroid/widget/Button;

.field private mSubView:Landroid/view/ViewGroup;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mVoiceBar:Landroid/view/View;

.field private mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

.field private mWarningTips:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private okDialog:Landroid/app/Dialog;

.field private pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

.field private pictureFile:Ljava/io/File;

.field private screenH:I

.field private softKeyboard:Landroid/view/inputmethod/InputMethodManager;

.field private title:Landroid/widget/TextView;

.field private titleBar:Landroid/view/View;

.field private vFloatingWindow:Landroid/view/View;

.field private voice:Landroid/widget/Button;

.field private voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

.field private waitDialog:Landroid/app/ProgressDialog;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private zoom:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;-><init>()V

    .line 146
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    .line 244
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$3;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    .line 251
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$4;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    .line 258
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$5;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    .line 285
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    .line 405
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    .line 1901
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$8;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    .line 85
    return-void
.end method

.method private LoadMsgData()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$LoadMessageAsyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$LoadMessageAsyn;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$LoadMessageAsyn;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$LoadMessageAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 483
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    return-object v0
.end method

.method static synthetic access$11(Z)V
    .locals 0
    .parameter

    .prologue
    .line 144
    sput-boolean p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendFlag:Z

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1959
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendPDFFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    return-void
.end method

.method static synthetic access$13()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendFlag:Z

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWarningTips:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendVoice:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowContentBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->zoom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fdisplayOrHidenSubView()V

    return-void
.end method

.method static synthetic access$28(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fshowVoiceBar()V

    return-void
.end method

.method static synthetic access$29(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fshowSendBar()V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1787
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseAskforDialog()V

    return-void
.end method

.method static synthetic access$30(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendVoice:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$32(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->isTouched:Z

    return-void
.end method

.method static synthetic access$33(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1633
    sput-boolean p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFlag:Z

    return-void
.end method

.method static synthetic access$34(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->creatFloatingWindowForIdiag()V

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->isTouched:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    return-object v0
.end method

.method private addFloatViewToViewPager()V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;

    .line 588
    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-static {p0, v1}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getFloatViewList(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;

    move-result-object v1

    .line 586
    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 589
    .local v0, pAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 590
    return-void
.end method

.method private addViewToViewPager()V
    .locals 3

    .prologue
    .line 577
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;

    .line 578
    const/4 v1, 0x0

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-static {p0, v1, v2}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getViewList(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;

    move-result-object v1

    .line 577
    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 579
    .local v0, pAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 580
    return-void
.end method

.method private clickFile(J)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    .line 814
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->menu_file_report:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 815
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 816
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .local v0, getFile:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 825
    .end local v0           #getFile:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->menu_file_gallery:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 819
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 820
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    .local v1, selectFile:Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 822
    .end local v1           #selectFile:Landroid/content/Intent;
    :cond_2
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->menu_file_cancel:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 823
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    goto :goto_0
.end method

.method private clickPic(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 835
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_camera:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 836
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 837
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd,HH-mm-ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 839
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v5, "/cnlaunch/xpro431/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 841
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 838
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, parent:Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {v1, v4}, Lcom/cnlaunch/newgolo/utils/FileTools;->createPictureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    .line 844
    const-string/jumbo v4, "MessageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v3, takePicture:Landroid/content/Intent;
    const-string/jumbo v4, "output"

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 847
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 858
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #parent:Ljava/lang/String;
    .end local v3           #takePicture:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_gallery:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    .line 850
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 851
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v2, selectPicture:Landroid/content/Intent;
    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 854
    const-string/jumbo v4, "MessageActivity"

    const-string/jumbo v5, "menu_picture_gallery"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    .end local v2           #selectPicture:Landroid/content/Intent;
    :cond_2
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_cancel:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 856
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    goto :goto_0
.end method

.method private creatFloatingWindowForIdiag()V
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 1271
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplication()Landroid/app/Application;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 1272
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 1273
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initFloatView()V

    .line 1274
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->setFloatWindows(Landroid/view/WindowManager$LayoutParams;)V

    .line 1275
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    if-nez v0, :cond_0

    .line 1277
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    const-string/jumbo v1, "MessageRoom"

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    .line 1279
    :cond_0
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    .line 1280
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 1281
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->addCount()V

    .line 1283
    return-void
.end method

.method private displayOrHidenSubView()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSubView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSubView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSubView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private fdisplayOrHidenSubView()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSubView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSubView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSubView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private fshowSendBar()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fVoiceBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 799
    return-void
.end method

.method private fshowVoiceBar()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fVoiceBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    return-void
.end method

.method private getKeyboard()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1986
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getScreenHeight()I
    .locals 2

    .prologue
    .line 1286
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1287
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1288
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method private initFloatView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1314
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1315
    sget v3, Lcom/cnlaunch/golo3/message/R$layout;->floating_im:I

    .line 1314
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1316
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1334
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_body:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;

    .line 1335
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1336
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_half_full:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1335
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;

    .line 1337
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1338
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_zoom:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->zoom:Landroid/widget/ImageView;

    .line 1340
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->zoom:Landroid/widget/ImageView;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_exit:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exit:Landroid/widget/ImageView;

    .line 1342
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exit:Landroid/widget/ImageView;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1344
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1343
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->title:Landroid/widget/TextView;

    .line 1345
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_titlebar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->titleBar:Landroid/view/View;

    .line 1347
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->titleBar:Landroid/view/View;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$14;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$14;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1355
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fAddBtn:Landroid/widget/Button;

    .line 1356
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fAddBtn:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowVoiceBtn:Landroid/widget/Button;

    .line 1358
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowVoiceBtn:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1359
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1360
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1359
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowContentBtn:Landroid/widget/Button;

    .line 1361
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fShowContentBtn:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1362
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_voice:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;

    .line 1363
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$15;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$15;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1370
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;

    sget v3, Lcom/cnlaunch/golo3/message/R$anim;->carmode_talk_gray:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1371
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1372
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 1373
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1374
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_send_voice_btn:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendVoice:Landroid/widget/Button;

    .line 1375
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendVoice:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonTouch;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1376
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_sendgroup:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSendBar:Landroid/view/View;

    .line 1377
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_voicegroup:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fVoiceBar:Landroid/view/View;

    .line 1379
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSend:Landroid/widget/Button;

    .line 1380
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSend:Landroid/widget/Button;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;

    invoke-direct {v3, p0, v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v3, Lcom/cnlaunch/golo3/message/R$id;->msg_warning_tips:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fWarningTips:Landroid/view/View;

    .line 1382
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fWarningTips:Landroid/view/View;

    invoke-static {p0}, Lcom/cnlaunch/newgolo/Tool/NetTool;->isNetConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;

    .line 1385
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1401
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1402
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1401
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSubView:Landroid/view/ViewGroup;

    .line 1403
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_listview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;

    .line 1404
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$17;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$17;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1442
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1443
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1444
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_viewpager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 1443
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fViewPager:Landroid/support/v4/view/ViewPager;

    .line 1445
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->addFloatViewToViewPager()V

    .line 1446
    return-void

    :cond_0
    move v1, v2

    .line 1383
    goto :goto_0
.end method

.method private initRemoteDiagManager()V
    .locals 2

    .prologue
    .line 1574
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$18;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$18;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 1632
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 486
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mAddBtn:Landroid/widget/Button;

    .line 487
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mAddBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mShowVoiceBtn:Landroid/widget/Button;

    .line 489
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mShowVoiceBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mShowContentBtn:Landroid/widget/Button;

    .line 491
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mShowContentBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send_voice_btn:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendVoice:Landroid/widget/Button;

    .line 493
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendVoice:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$11;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_sendgroup:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendBar:Landroid/view/View;

    .line 518
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voicegroup:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceBar:Landroid/view/View;

    .line 520
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSend:Landroid/widget/Button;

    .line 521
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSend:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_warning_tips:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWarningTips:Landroid/view/View;

    .line 523
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWarningTips:Landroid/view/View;

    invoke-static {p0}, Lcom/cnlaunch/newgolo/Tool/NetTool;->isNetConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 525
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_content:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContentTxt:Landroid/widget/EditText;

    .line 526
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_id:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSubView:Landroid/view/ViewGroup;

    .line 527
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_listview:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;

    .line 528
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 559
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    .line 560
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 559
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    .line 561
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemEntityClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;)V

    .line 562
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemErrorClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;)V

    .line 563
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemHeadClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;)V

    .line 564
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemMenuClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;)V

    .line 565
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemLongClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;)V

    .line 566
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_viewpager:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 568
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->addViewToViewPager()V

    .line 569
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->setTitel(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private prewPictureFile(Landroid/net/Uri;)V
    .locals 2
    .parameter "fromFile"

    .prologue
    .line 947
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    .local v0, takePreview:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 949
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 950
    return-void
.end method

.method private printMsgData()V
    .locals 4

    .prologue
    .line 1210
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "---size \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1216
    return-void

    .line 1212
    :cond_0
    const-string/jumbo v2, "MessageActivity"

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "---roomId:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1214
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method private registerNetWorkChang()V
    .locals 3

    .prologue
    .line 339
    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mReceiver:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mReceiver:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    return-void
.end method

.method private sendFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 904
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 906
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 907
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 908
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 911
    return-void
.end method

.method private sendFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 4
    .parameter "fileName"
    .parameter "callback"

    .prologue
    .line 917
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 919
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 920
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 923
    return-void
.end method

.method private sendPDFFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 6
    .parameter "filepath"
    .parameter "callback"

    .prologue
    .line 1960
    move-object v0, p1

    .line 1961
    .local v0, file:Ljava/lang/String;
    const-string/jumbo v2, "MessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDF->filepath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v1, temp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1964
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1968
    :goto_0
    return-void

    .line 1967
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    goto :goto_0
.end method

.method private sendPictureFile(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 932
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPictureFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 934
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 935
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 936
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 939
    return-void
.end method

.method private setFloatWindows(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "wmParams"

    .prologue
    const/4 v2, 0x0

    .line 1294
    const/16 v1, 0x7d2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1296
    const/4 v1, 0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1299
    const/16 v1, 0x8

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1302
    const/16 v1, 0x53

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1304
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1305
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1306
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1307
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1309
    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1310
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1311
    return-void
.end method

.method private showDiagnoseAskforDialog()V
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1795
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->creatFloatingWindowForIdiag()V

    .line 1796
    return-void
.end method

.method private showSendBar()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    return-void
.end method

.method private showVoiceBar()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mSendBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 803
    return-void
.end method


# virtual methods
.method protected autoAnswerAskfor(Ljava/lang/String;)V
    .locals 4
    .parameter "snKey"

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$20;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V

    .line 1694
    const-wide/16 v2, 0x3e8

    .line 1667
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1695
    return-void
.end method

.method public beginDialog()V
    .locals 9

    .prologue
    .line 673
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 674
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 675
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 676
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 679
    sget v8, Lcom/cnlaunch/golo3/message/R$string;->request_diagnose:I

    .line 678
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 677
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 680
    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createInviteCMD()Ljava/lang/String;

    move-result-object v6

    .line 673
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v7

    .line 682
    .local v7, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v7}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 683
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    .line 684
    sget v1, Lcom/cnlaunch/golo3/message/R$string;->remote_begin_waiting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseWaitDialog(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method protected dimissDiagnoseDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1877
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1879
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1883
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1885
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFloatingMode()V

    .line 1886
    return-void
.end method

.method public dismissVoiceDialog()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->dismiss()V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 1071
    :cond_0
    return-void
.end method

.method public exitFloating()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1638
    sput-boolean v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1639
    sget-boolean v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFlag:Z

    if-eqz v0, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFloatingMode()V

    .line 1641
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.launch.iDiagServive.stopRemoteDiag"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1642
    sput-boolean v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFlag:Z

    .line 1657
    :goto_0
    return-void

    .line 1644
    :cond_0
    sput-boolean v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFlag:Z

    .line 1645
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->exit_toast:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1646
    new-instance v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$19;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 1655
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$19;->start()V

    goto :goto_0
.end method

.method protected exitFloatingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1995
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1997
    iput-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    .line 1998
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->subCount()V

    .line 2000
    :cond_0
    sget-boolean v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendFlag:Z

    if-nez v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 2003
    :cond_1
    const-string/jumbo v0, "MessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Message :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->remoteDiagnoseHandle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2005
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setRemoteDiagnoseHandleListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;)V

    .line 2006
    return-void
.end method

.method protected hidenMenu()Z
    .locals 5

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, result:Z
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    move v3, v2

    .line 361
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 353
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    const/4 v1, 0x0

    .line 354
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    move v3, v2

    .line 361
    .restart local v3       #result:I
    goto :goto_0

    .line 355
    .end local v3           #result:I
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 356
    .restart local v1       #msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setShowMenu(Z)V

    .line 358
    const/4 v2, 0x1

    .line 354
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public leftNavClick()V
    .locals 0

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->finish()V

    .line 1236
    return-void
.end method

.method protected moveFloatWindow(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1454
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event.getAction():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1457
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->titleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->floatWindowY:F

    .line 1459
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACTION_DOWN:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->floatWindowY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", wmParams.y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1460
    const-string/jumbo v3, ", vFloatingWindow.getY();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1459
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getScreenHeight()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->screenH:I

    goto :goto_0

    .line 1464
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->floatWindowY:F

    sub-float v0, v1, v2

    .line 1465
    .local v0, span:F
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "move:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", span:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->screenH:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1468
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wmParams.y:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1474
    .end local v0           #span:F
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->floatWindowY:F

    goto/16 :goto_0

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 862
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 863
    const-string/jumbo v3, ", resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 865
    packed-switch p1, :pswitch_data_0

    .line 898
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 867
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->prewPictureFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 872
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->prewPictureFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 875
    :pswitch_3
    const-string/jumbo v1, "MessageActivity"

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult requestCode REQUEST_CODE_SELECT_PREVIEW:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 876
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendPictureFile(Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 882
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 883
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendFile(Ljava/lang/String;)V

    goto :goto_0

    .line 889
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_0

    .line 890
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 892
    :pswitch_5
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 890
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v7, v0

    .line 773
    .local v7, id:J
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->displayOrHidenSubView()V

    .line 788
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v8}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->clickPic(J)V

    .line 789
    invoke-direct {p0, v7, v8}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->clickFile(J)V

    .line 790
    return-void

    .line 775
    :cond_1
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    .line 776
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showVoiceBar()V

    goto :goto_0

    .line 777
    :cond_2
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_3

    .line 778
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showSendBar()V

    goto :goto_0

    .line 779
    :cond_3
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContentTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    .line 783
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 784
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 782
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendTxtMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z

    .line 785
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContentTxt:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/cnlaunch/golo3/message/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->activtity_message:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->addContentView(I)V

    .line 306
    iput-object p0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    .line 307
    invoke-static {p0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    .line 308
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, p0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setGoloContext(Landroid/content/Context;)V

    .line 309
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "chatroom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 315
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    if-nez v1, :cond_0

    .line 316
    sget v1, Lcom/cnlaunch/golo3/message/R$string;->start_room_error:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 336
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setCurrentChatRoom(Lcom/cnlaunch/newgolo/model/ChatRoom;)V

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    .line 322
    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    const-string/jumbo v2, "MessageRoom"

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    .line 323
    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    .line 324
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 325
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initView()V

    .line 326
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->LoadMsgData()V

    .line 327
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->registerNetWorkChang()V

    .line 328
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initRemoteDiagManager()V

    .line 329
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setDiagnoseStatusListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;)V

    .line 330
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->registerBroadcastReceiver()V

    .line 334
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->addCount()V

    .line 335
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "onCreat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->subCount()V

    .line 745
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 747
    iput-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 751
    iput-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->dismiss()V

    .line 755
    iput-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;

    if-nez v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->destroy()V

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->releasePlayVoice()V

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 765
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mReceiver:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$NetWorkBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onDestroy()V

    .line 768
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 738
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onPause()V

    .line 739
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 732
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onResume()V

    .line 733
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 661
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onStart()V

    .line 662
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 663
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1054
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onStop()V

    .line 1055
    return-void
.end method

.method protected openFile(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 466
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    :goto_0
    return-void

    .line 470
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 471
    .local v1, fileUri:Landroid/net/Uri;
    const-string/jumbo v3, "MessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fileUri:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, file:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getMIME()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected openPicture(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, tmpIntent:Landroid/content/Intent;
    const-string/jumbo v1, "BUNDLE"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 455
    const-string/jumbo v1, "IMAGEPOSITION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-class v1, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method protected openTextContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 446
    const-string/jumbo v0, "TYPE_TEXT"

    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method protected playVoice(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, voicePath:Ljava/lang/String;
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "voicePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setOnVoiceListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;)V

    .line 402
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->palyVoice(Ljava/lang/String;I)V

    .line 403
    return-void
.end method

.method public rightNavClick()V
    .locals 0

    .prologue
    .line 1241
    return-void
.end method

.method public sendDiagTexy(Ljava/lang/String;)V
    .locals 3
    .parameter "mText"

    .prologue
    .line 1970
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 1971
    .local v0, textMsg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 1972
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 1973
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 1974
    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1975
    return-void
.end method

.method protected showDiagnoseAskforDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "snKey"

    .prologue
    .line 1799
    move-object v1, p1

    .line 1800
    .local v1, keyNo:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1801
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1803
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1804
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1805
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1807
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1808
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->remote_diag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1809
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->request_remote_diagnose:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1811
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1813
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->receive_diagnose:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1814
    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;

    invoke-direct {v3, p0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1849
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->diagnose_refuse:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1850
    new-instance v4, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;

    invoke-direct {v4, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 1848
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1869
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1870
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1871
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1874
    return-void
.end method

.method protected showDiagnoseFailDialog()V
    .locals 3

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1736
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1737
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1740
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1741
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1742
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_title_name:I

    .line 1741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1743
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1744
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1746
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_dialog_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1747
    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$22;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$22;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 1745
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1753
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1754
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1755
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1756
    return-void
.end method

.method protected showDiagnoseRefuseDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 1759
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "showDiagnoseRefuseDialog start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1764
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1765
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1766
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1768
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1769
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1770
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_title_name:I

    .line 1769
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1771
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1772
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1774
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_dialog_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1775
    new-instance v2, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$23;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$23;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 1773
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1781
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    .line 1782
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1783
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1784
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "showDiagnoseRefuseDialog end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-void
.end method

.method protected showDiagnoseWaitDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1706
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    .line 1707
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1708
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1709
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1710
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$21;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$21;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1728
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1729
    return-void
.end method

.method public showFileDialog()V
    .locals 7

    .prologue
    .line 694
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-nez v4, :cond_0

    .line 695
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 696
    sget v5, Lcom/cnlaunch/golo3/message/R$layout;->chat_menu_file:I

    const/4 v6, 0x0

    .line 695
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 697
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_report:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 698
    .local v2, report:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_gallery:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 699
    .local v1, gallery:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 700
    .local v0, cancel:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    new-instance v4, Lcom/cnlaunch/newgolo/widget/SelectDialog;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/newgolo/widget/SelectDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 704
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4, v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setContentView(Landroid/view/View;)V

    .line 705
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    sget v5, Lcom/cnlaunch/golo3/message/R$style;->dialog_anim:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setWindowAnimations(I)V

    .line 707
    .end local v0           #cancel:Landroid/widget/Button;
    .end local v1           #gallery:Landroid/widget/Button;
    .end local v2           #report:Landroid/widget/Button;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->show()V

    .line 708
    return-void
.end method

.method protected showKeyboard(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1978
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1979
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getKeyboard()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 1982
    return-void
.end method

.method public showPictureDialog()V
    .locals 7

    .prologue
    .line 714
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-nez v4, :cond_0

    .line 715
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/cnlaunch/golo3/message/R$layout;->chat_menu_picture:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 716
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_camera:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 717
    .local v0, camera:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_gallery:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 718
    .local v2, gallery:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 719
    .local v1, cancel:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    new-instance v4, Lcom/cnlaunch/newgolo/widget/SelectDialog;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/newgolo/widget/SelectDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 723
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4, v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setContentView(Landroid/view/View;)V

    .line 724
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    sget v5, Lcom/cnlaunch/golo3/message/R$style;->dialog_anim:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setWindowAnimations(I)V

    .line 726
    .end local v0           #camera:Landroid/widget/Button;
    .end local v1           #cancel:Landroid/widget/Button;
    .end local v2           #gallery:Landroid/widget/Button;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->show()V

    .line 727
    return-void
.end method

.method protected showResendDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 370
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->resend_msg:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 372
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->resend_tt:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 373
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->cancle:I

    .line 374
    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$9;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$9;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->confirm:I

    .line 381
    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;I)V

    .line 380
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 391
    .local v0, dg:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 392
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 393
    return-void
.end method

.method public showVoiceDialog()V
    .locals 3

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/widget/RecordDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 1060
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1061
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getRecorder()Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->setRecord(Landroid/media/MediaRecorder;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->show()V

    .line 1064
    return-void
.end method
