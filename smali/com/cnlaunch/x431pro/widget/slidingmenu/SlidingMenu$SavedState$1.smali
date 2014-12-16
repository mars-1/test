.class Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 863
    new-instance v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 867
    new-array v0, p1, [Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState$1;->newArray(I)[Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method
