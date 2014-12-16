.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;
.super Lcom/cnlaunch/x431pro/widget/staggeredgridview/ClassLoaderSavedState;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected firstId:J

.field protected height:I

.field protected position:I

.field protected selectedId:J

.field protected viewTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2786
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState$1;-><init>()V

    .line 2785
    sput-object v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2794
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 2756
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ClassLoaderSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2757
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    .line 2758
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    .line 2759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    .line 2760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    .line 2761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    .line 2762
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 2749
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ClassLoaderSavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 2750
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExtendableListView.ListSavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2777
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2778
    const-string/jumbo v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2779
    const-string/jumbo v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2780
    const-string/jumbo v1, " viewTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2781
    const-string/jumbo v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2782
    const-string/jumbo v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 2766
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ClassLoaderSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2767
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2768
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2769
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    return-void
.end method
