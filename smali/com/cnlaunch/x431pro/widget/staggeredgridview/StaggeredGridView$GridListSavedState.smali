.class public Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;
.super Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridListSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field columnCount:I

.field columnTops:[I

.field positionData:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1254
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState$1;-><init>()V

    .line 1253
    sput-object v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1262
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1234
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    :goto_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1235
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 1236
    const-class v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridItemRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    .line 1237
    return-void

    .line 1234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1225
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1226
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StaggeredGridView.GridListSavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1241
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1242
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->columnTops:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1244
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1245
    return-void
.end method
