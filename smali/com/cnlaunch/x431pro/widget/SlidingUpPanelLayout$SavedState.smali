.class Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1218
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1196
    :try_start_0
    const-class v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1191
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1204
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1206
    return-void
.end method
