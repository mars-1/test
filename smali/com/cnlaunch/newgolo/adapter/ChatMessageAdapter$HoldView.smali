.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldView"
.end annotation


# instance fields
.field mContent:Landroid/widget/TextView;

.field mCopy:Landroid/widget/Button;

.field mDel:Landroid/widget/Button;

.field mErrorIcon:Landroid/widget/ImageView;

.field mFavorite:Landroid/widget/Button;

.field mFileIcon:Landroid/widget/ImageView;

.field mFileLayout:Landroid/view/View;

.field mFileName:Landroid/widget/TextView;

.field mForward:Landroid/widget/Button;

.field mHeadView:Landroid/widget/ImageView;

.field mMenuView:Landroid/view/View;

.field mMsgEntityContent:Landroid/view/View;

.field mPicProgress:Landroid/widget/ProgressBar;

.field mPicture:Landroid/widget/ImageView;

.field mPictureLayout:Landroid/view/View;

.field mProgress:Lcom/cnlaunch/newgolo/widget/GoloProgress;

.field mResend:Landroid/widget/Button;

.field mTimeView:Lcom/cnlaunch/newgolo/widget/CornerText;

.field mVoiceLayout:Landroid/view/View;

.field mVoiceLogo:Landroid/widget/ImageView;

.field mVoiceTime:Landroid/widget/TextView;

.field mVoiceView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$HoldView;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
