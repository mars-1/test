.class public Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.super Landroid/app/Fragment;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/newgolo/fragment/InfaceMessageCallBack;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;,
        Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_FILE:Ljava/lang/String; = "file"

.field private static final MAX_WAIT_TIME:I = 0xea60

.field private static final MIN_REC_TIME:I = 0x7d0

.field private static final MSG_DIAGNOSE_ASKFOR:I = 0x7

.field private static final MSG_DIAGNOSE_ERROR:I = 0x4

.field private static final MSG_DIAGNOSE_FAIL:I = 0x1

.field private static final MSG_DIAGNOSE_INIT:I = 0x2

.field private static final MSG_DIAGNOSE_NEEDUPDATE:I = 0x5

.field private static final MSG_DIAGNOSE_REFUSE:I = 0x3

.field private static final MSG_DIAGNOSE_START:I = 0x6

.field private static final MSG_DIAGNOSE_STOP:I = 0x8

.field private static final MSG_DIAGNOSE_TIMEOUT:I = 0xb

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

.field public static final TAG:Ljava/lang/String; = "MessageFragment"

.field private static exitFlag:Z

.field private static sendFlag:Z


# instance fields
.field private currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

.field private customer_type:Ljava/lang/String;

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

.field private fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

.field private fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

.field public imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

.field private isRemoteMessageFragment:Z

.field private isTouched:Z

.field private itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

.field private itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

.field private itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

.field private itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

.field private itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

.field private mAddBtn:Landroid/widget/Button;

.field private mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

.field private mContentTxt:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mCustemInfoDB:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

.field private mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

.field private mListView:Landroid/widget/ListView;

.field private mMessageHandlerThread:Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;

.field private mReceiver:Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;

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

.field private okDialog:Landroid/app/Dialog;

.field private pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

.field private pictureFile:Ljava/io/File;

.field private request_id:Ljava/lang/String;

.field private softKeyboard:Landroid/view/inputmethod/InputMethodManager;

.field private voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

.field private waitDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isRemoteMessageFragment:Z

    .line 161
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    .line 257
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$3;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    .line 264
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$4;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    .line 271
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    .line 298
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$6;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$6;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    .line 448
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    .line 1511
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$8;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$8;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    .line 90
    return-void
.end method

.method private LoadMsgData()V
    .locals 2

    .prologue
    .line 538
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 539
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    return-object v0
.end method

.method static synthetic access$11(Z)V
    .locals 0
    .parameter

    .prologue
    .line 153
    sput-boolean p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendFlag:Z

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1559
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendPDFFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mCustemInfoDB:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->customer_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->addViewToViewPager()V

    return-void
.end method

.method static synthetic access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mWarningTips:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendVoice:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isTouched:Z

    return-void
.end method

.method static synthetic access$21(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    sput-boolean p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFlag:Z

    return-void
.end method

.method static synthetic access$22(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->launchRemoteDiag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseAskforDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isTouched:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V

    return-void
.end method

.method private addViewToViewPager()V
    .locals 4

    .prologue
    .line 626
    iget-boolean v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isRemoteMessageFragment:Z

    if-nez v1, :cond_0

    .line 628
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "followed"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->customer_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getViewList(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 629
    .local v0, pAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 635
    :goto_0
    return-void

    .line 632
    .end local v0           #pAdapter:Landroid/support/v4/view/PagerAdapter;
    :cond_0
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getViewList(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 633
    .restart local v0       #pAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method private clickFile(J)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x4

    .line 799
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->menu_file_report:I

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 800
    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 801
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/golo3/ui/business/MyReport2Activity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 802
    .local v0, getFile:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 803
    .local v1, pActivity:Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {v1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    .end local v0           #getFile:Landroid/content/Intent;
    .end local v1           #pActivity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 806
    .restart local v0       #getFile:Landroid/content/Intent;
    .restart local v1       #pActivity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 808
    .end local v0           #getFile:Landroid/content/Intent;
    .end local v1           #pActivity:Landroid/app/Activity;
    :cond_2
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->menu_file_gallery:I

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_4

    .line 809
    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 810
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/golo3/ui/folder/FolderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 811
    .local v2, selectFile:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 812
    .restart local v1       #pActivity:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 813
    invoke-virtual {v1, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 815
    :cond_3
    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 817
    .end local v1           #pActivity:Landroid/app/Activity;
    .end local v2           #selectFile:Landroid/content/Intent;
    :cond_4
    sget v3, Lcom/cnlaunch/golo3/message/R$id;->menu_file_cancel:I

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    goto :goto_0
.end method

.method private clickPic(J)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 830
    sget v5, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_camera:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_2

    .line 831
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 832
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd,HH-mm-ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/cnlaunch/xpro431/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/picture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, parent:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/cnlaunch/newgolo/utils/FileTools;->createPictureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    .line 835
    const-string/jumbo v5, "MessageFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parent:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v4, takePicture:Landroid/content/Intent;
    const-string/jumbo v5, "output"

    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 839
    .local v1, pActivity:Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 840
    invoke-virtual {v1, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 860
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #pActivity:Landroid/app/Activity;
    .end local v2           #parent:Ljava/lang/String;
    .end local v4           #takePicture:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 842
    .restart local v0       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v1       #pActivity:Landroid/app/Activity;
    .restart local v2       #parent:Ljava/lang/String;
    .restart local v4       #takePicture:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v4, v8}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 845
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #pActivity:Landroid/app/Activity;
    .end local v2           #parent:Ljava/lang/String;
    .end local v4           #takePicture:Landroid/content/Intent;
    :cond_2
    sget v5, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_gallery:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    .line 846
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 847
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v3, selectPicture:Landroid/content/Intent;
    const-string/jumbo v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 850
    .restart local v1       #pActivity:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 851
    invoke-virtual {v1, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    :goto_1
    const-string/jumbo v5, "MessageFragment"

    const-string/jumbo v6, "menu_picture_gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_3
    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 857
    .end local v1           #pActivity:Landroid/app/Activity;
    .end local v3           #selectPicture:Landroid/content/Intent;
    :cond_4
    sget v5, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_cancel:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    .line 858
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    goto :goto_0
.end method

.method private displayOrHidenSubView()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSubView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSubView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSubView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private getKeyboard()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->softKeyboard:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private initRemoteDiagManager()V
    .locals 2

    .prologue
    .line 1215
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 1277
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "contentView"

    .prologue
    const/4 v1, 0x0

    .line 542
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mAddBtn:Landroid/widget/Button;

    .line 543
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mAddBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mShowVoiceBtn:Landroid/widget/Button;

    .line 545
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mShowVoiceBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mShowContentBtn:Landroid/widget/Button;

    .line 547
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mShowContentBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send_voice_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendVoice:Landroid/widget/Button;

    .line 549
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendVoice:Landroid/widget/Button;

    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$11;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 570
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_sendgroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendBar:Landroid/view/View;

    .line 571
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voicegroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceBar:Landroid/view/View;

    .line 573
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSend:Landroid/widget/Button;

    .line 574
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSend:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_warning_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mWarningTips:Landroid/view/View;

    .line 576
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mWarningTips:Landroid/view/View;

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/Tool/NetTool;->isNetConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 577
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContentTxt:Landroid/widget/EditText;

    .line 578
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSubView:Landroid/view/ViewGroup;

    .line 579
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_listview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;

    .line 580
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment$12;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$12;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    .line 611
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemEntityClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;)V

    .line 612
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemErrorClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;)V

    .line 613
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemHeadClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;)V

    .line 614
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemMenuClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;)V

    .line 615
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->itemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->setItemLongClick(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;)V

    .line 616
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_subview_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 618
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->addViewToViewPager()V

    .line 619
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 620
    return-void

    :cond_0
    move v0, v1

    .line 576
    goto :goto_0
.end method

.method private launchRemoteDiag(Ljava/lang/String;)V
    .locals 5
    .parameter "snKey"

    .prologue
    .line 1601
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "show_remotediag"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1603
    .local v1, remoteDiagBundle:Landroid/os/Bundle;
    const-string/jumbo v2, "identify"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1604
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string/jumbo v2, "userName"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string/jumbo v2, "NickName"

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string/jumbo v2, "serialNum"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v2, "pubId"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1609
    const-string/jumbo v2, "pubName"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string/jumbo v2, "request_id"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v2, "lat"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->getLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v2, "lon"

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->getLon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->clearLocation()V

    .line 1615
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1616
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1617
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1619
    :cond_0
    return-void
.end method

.method private prewPictureFile(Landroid/net/Uri;)V
    .locals 5
    .parameter "fromFile"

    .prologue
    const/4 v4, 0x5

    .line 943
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .local v1, takePreview:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 946
    .local v0, pActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-virtual {p0, v1, v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private registerNetWorkChang()V
    .locals 3

    .prologue
    .line 384
    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mReceiver:Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;

    .line 385
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mReceiver:Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    return-void
.end method

.method private sendFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 903
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 905
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 906
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 909
    return-void
.end method

.method private sendFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 4
    .parameter "fileName"
    .parameter "callback"

    .prologue
    .line 915
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 917
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 918
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendPDFMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;Lcom/cnlaunch/newgolo/model/ICallback;)V

    .line 921
    return-void
.end method

.method private sendPDFFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
    .locals 6
    .parameter "filepath"
    .parameter "callback"

    .prologue
    .line 1560
    move-object v0, p1

    .line 1561
    .local v0, file:Ljava/lang/String;
    const-string/jumbo v2, "MessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDF->filepath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v1, temp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1564
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->too_big:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1568
    :goto_0
    return-void

    .line 1567
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendFile(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V

    goto :goto_0
.end method

.method private sendPictureFile(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 929
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPictureFile path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 931
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 932
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPath(Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 935
    return-void
.end method

.method private sendRemoteStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 682
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendRemoteStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", request_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendRemoteDiagnoseStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showDiagnoseAskforDialog()V
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1437
    :cond_1
    return-void
.end method

.method private showSendBar()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    return-void
.end method

.method private showVoiceBar()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mSendBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    return-void
.end method


# virtual methods
.method protected autoAnswerAskfor(Ljava/lang/String;)V
    .locals 4
    .parameter "snKey"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$15;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V

    .line 1342
    const-wide/16 v2, 0x3e8

    .line 1316
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1344
    return-void
.end method

.method public beginDialog()V
    .locals 9

    .prologue
    .line 666
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/cnlaunch/golo3/message/R$string;->request_diagnose:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createInviteCMD()Ljava/lang/String;

    move-result-object v6

    .line 666
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v7

    .line 669
    .local v7, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-static {v7}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 670
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->remote_begin_waiting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseWaitDialog(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 672
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V

    .line 673
    return-void
.end method

.method protected dimissDiagnoseDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1500
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1502
    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1506
    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFloatingMode()V

    .line 1509
    return-void
.end method

.method public dismissVoiceDialog()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->dismiss()V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 1024
    :cond_0
    return-void
.end method

.method public exitFloating()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1285
    sput-boolean v3, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1286
    sget-boolean v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFlag:Z

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFloatingMode()V

    .line 1288
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.launch.iDiagServive.stopRemoteDiag"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1289
    sput-boolean v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFlag:Z

    .line 1304
    :goto_0
    return-void

    .line 1291
    :cond_0
    sput-boolean v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->exitFlag:Z

    .line 1292
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->exit_toast:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1293
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$14;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$14;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    .line 1302
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$14;->start()V

    goto :goto_0
.end method

.method protected exitFloatingMode()V
    .locals 3

    .prologue
    .line 1596
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Message :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V

    .line 1598
    return-void
.end method

.method public getOutSideOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1623
    new-instance v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    return-object v0
.end method

.method protected hidenMenu()Z
    .locals 5

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, result:Z
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    move v3, v2

    .line 406
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 398
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    const/4 v1, 0x0

    .line 399
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    move v3, v2

    .line 406
    .restart local v3       #result:I
    goto :goto_0

    .line 400
    .end local v3           #result:I
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 401
    .restart local v1       #msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setShowMenu(Z)V

    .line 403
    const/4 v2, 0x1

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 864
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 866
    packed-switch p1, :pswitch_data_0

    .line 897
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 868
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->prewPictureFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 873
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->prewPictureFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 876
    :pswitch_3
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult requestCode REQUEST_CODE_SELECT_PREVIEW:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendPictureFile(Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 881
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendFile(Ljava/lang/String;)V

    goto :goto_0

    .line 888
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_0

    .line 889
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 891
    :pswitch_5
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pictureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 866
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

    .line 889
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 332
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 765
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v7, v0

    .line 766
    .local v7, id:J
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_1

    .line 767
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->displayOrHidenSubView()V

    .line 779
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v8}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->clickPic(J)V

    .line 780
    invoke-direct {p0, v7, v8}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->clickFile(J)V

    .line 781
    return-void

    .line 768
    :cond_1
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    .line 769
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showVoiceBar()V

    goto :goto_0

    .line 770
    :cond_2
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_3

    .line 771
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showSendBar()V

    goto :goto_0

    .line 772
    :cond_3
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContentTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendTxtMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z

    .line 776
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContentTxt:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 349
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    .line 350
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setGoloContext(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 353
    .local v0, intent:Landroid/os/Bundle;
    const-string/jumbo v1, "chatroom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 355
    const-string/jumbo v1, "isRemote"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string/jumbo v1, "isRemote"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isRemoteMessageFragment:Z

    .line 357
    const-string/jumbo v1, "Sanda"

    const-string/jumbo v2, "isRemote"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentChatRoom id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pub id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->start_room_error:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 381
    :goto_1
    return-void

    .line 359
    :cond_0
    const-string/jumbo v1, "Sanda"

    const-string/jumbo v2, "noRemote"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->customer_type:Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->customer_type:Ljava/lang/String;

    .line 368
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "customer_type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->customer_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setCurrentChatRoom(Lcom/cnlaunch/newgolo/model/ChatRoom;)V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    .line 371
    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;

    const-string/jumbo v2, "MessageRoom"

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;

    .line 372
    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mMessageHandlerThread:Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

    .line 373
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 374
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->registerNetWorkChang()V

    .line 375
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->initRemoteDiagManager()V

    .line 376
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mDiagnoseStatusListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setDiagnoseStatusListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;)V

    .line 377
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->addCount()V

    .line 378
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->close()V

    .line 379
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mCustemInfoDB:Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    .line 380
    const-string/jumbo v1, "MessageFragment"

    const-string/jumbo v2, "onCreat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 316
    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->activtity_message:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, contentView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->initView(Landroid/view/View;)V

    .line 318
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->LoadMsgData()V

    .line 321
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 732
    const-string/jumbo v1, "MessageFragment"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;->subCount()V

    .line 734
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 736
    iput-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->dismiss()V

    .line 740
    iput-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-eqz v1, :cond_2

    .line 743
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->dismiss()V

    .line 744
    iput-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatRoomMessageHandler:Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mReceiver:Lcom/cnlaunch/newgolo/fragment/MessageFragment$NetWorkBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 761
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterReceiver fail e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 339
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 344
    return-void
.end method

.method protected openFile(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    :goto_0
    return-void

    .line 520
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    .local v1, fileUri:Landroid/net/Uri;
    const-string/jumbo v5, "MessageFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "fileUri:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, file:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getMIME()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 526
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x20

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 527
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 528
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/golo3/message/R$string;->file_open_fail:I

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected openPicture(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, tmpIntent:Landroid/content/Intent;
    const-string/jumbo v1, "BUNDLE"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 505
    const-string/jumbo v1, "IMAGEPOSITION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 507
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 508
    return-void
.end method

.method protected openTextContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 496
    const-string/jumbo v0, "TYPE_TEXT"

    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->content:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method protected playVoice(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, voicePath:Ljava/lang/String;
    const-string/jumbo v1, "MessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "voicePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->voiceListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setOnVoiceListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;)V

    .line 445
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1, v0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->palyVoice(Ljava/lang/String;I)V

    .line 446
    return-void
.end method

.method public sendDiagTexy(Ljava/lang/String;)V
    .locals 3
    .parameter "mText"

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->createMessage(I)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    .line 1572
    .local v0, textMsg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setText(Ljava/lang/String;)V

    .line 1573
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 1574
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 1575
    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1576
    return-void
.end method

.method protected showDiagnoseAskforDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "snKey"

    .prologue
    .line 1440
    move-object v1, p1

    .line 1441
    .local v1, keyNo:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1442
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1445
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1446
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1448
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1449
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->remote_diag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->request_remote_diagnose:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1451
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1452
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->receive_diagnose:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$19;

    invoke-direct {v3, p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$19;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1478
    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cnlaunch/golo3/message/R$string;->diagnose_refuse:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cnlaunch/newgolo/fragment/MessageFragment$20;

    invoke-direct {v4, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$20;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1493
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1494
    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1497
    return-void
.end method

.method protected showDiagnoseFailDialog()V
    .locals 3

    .prologue
    .line 1380
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1384
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1387
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_title_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1389
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1390
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1391
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_dialog_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment$17;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$17;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1398
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1399
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1400
    return-void
.end method

.method protected showDiagnoseRefuseDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 1403
    const-string/jumbo v1, "MessageFragment"

    const-string/jumbo v2, "showDiagnoseRefuseDialog start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1409
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1412
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1413
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_title_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1414
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1415
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1416
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->remote_dialog_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment$18;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$18;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    .line 1423
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1424
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1425
    const-string/jumbo v1, "MessageFragment"

    const-string/jumbo v2, "showDiagnoseRefuseDialog end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method protected showDiagnoseWaitDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1355
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    .line 1356
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1357
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1359
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1375
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1376
    return-void
.end method

.method public showFileDialog()V
    .locals 7

    .prologue
    .line 696
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-nez v4, :cond_0

    .line 697
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/cnlaunch/golo3/message/R$layout;->chat_menu_file:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 698
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_report:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 699
    .local v2, report:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_gallery:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 700
    .local v1, gallery:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_file_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 701
    .local v0, cancel:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    new-instance v4, Lcom/cnlaunch/newgolo/widget/SelectDialog;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/newgolo/widget/SelectDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 705
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4, v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setContentView(Landroid/view/View;)V

    .line 706
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    sget v5, Lcom/cnlaunch/golo3/message/R$style;->dialog_anim:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setWindowAnimations(I)V

    .line 708
    .end local v0           #cancel:Landroid/widget/Button;
    .end local v1           #gallery:Landroid/widget/Button;
    .end local v2           #report:Landroid/widget/Button;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->fSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->show()V

    .line 709
    return-void
.end method

.method protected showKeyboard(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1579
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1580
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getKeyboard()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 1581
    return-void
.end method

.method public showPictureDialog()V
    .locals 7

    .prologue
    .line 715
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    if-nez v4, :cond_0

    .line 716
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/cnlaunch/golo3/message/R$layout;->chat_menu_picture:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 717
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_camera:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 718
    .local v0, camera:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_gallery:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 719
    .local v2, gallery:Landroid/widget/Button;
    sget v4, Lcom/cnlaunch/golo3/message/R$id;->menu_picture_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 720
    .local v1, cancel:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    new-instance v4, Lcom/cnlaunch/newgolo/widget/SelectDialog;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/newgolo/widget/SelectDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    .line 724
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4, v3}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setContentView(Landroid/view/View;)V

    .line 725
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    sget v5, Lcom/cnlaunch/golo3/message/R$style;->dialog_anim:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->setWindowAnimations(I)V

    .line 727
    .end local v0           #camera:Landroid/widget/Button;
    .end local v1           #cancel:Landroid/widget/Button;
    .end local v2           #gallery:Landroid/widget/Button;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->pSelectDialog:Lcom/cnlaunch/newgolo/widget/SelectDialog;

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/widget/SelectDialog;->show()V

    .line 728
    return-void
.end method

.method protected showResendDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 415
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->resend_msg:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 417
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->resend_tt:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 418
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->cancle:I

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$9;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$9;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    sget v2, Lcom/cnlaunch/golo3/message/R$string;->confirm:I

    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$10;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 434
    .local v0, dg:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 435
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 436
    return-void
.end method

.method public showVoiceDialog()V
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$style;->dialog_full:I

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/widget/RecordDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 1013
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1014
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getRecorder()Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->setRecord(Landroid/media/MediaRecorder;)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mVoiceStatusDialog:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->show()V

    .line 1017
    return-void
.end method
