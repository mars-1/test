.class public Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
.super Ljava/lang/Object;
.source "XYSeriesRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FillOutsideLine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mFillRange:[I

.field private final mType:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x7d

    const/16 v1, 0xc8

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mColor:I

    .line 78
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mType:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    .line 79
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mColor:I

    return v0
.end method

.method public getFillRange()[I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mFillRange:[I

    return-object v0
.end method

.method public getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mType:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 97
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mColor:I

    .line 98
    return-void
.end method

.method public setFillRange([I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->mFillRange:[I

    .line 128
    return-void
.end method
