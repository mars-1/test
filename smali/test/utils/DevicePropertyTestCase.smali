.class public Ltest/utils/DevicePropertyTestCase;
.super Landroid/test/AndroidTestCase;
.source "DevicePropertyTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/utils/DevicePropertyTestCase$DisplayUtil;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Device Property TestCase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 13
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 18
    return-void
.end method

.method public testproperty()V
    .locals 4

    .prologue
    .line 20
    iget-object v2, p0, Ltest/utils/DevicePropertyTestCase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .local v1, widthPixels:I
    iget-object v2, p0, Ltest/utils/DevicePropertyTestCase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .local v0, heightPixels:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "widthPixels = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "heightPixels ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltest/utils/DevicePropertyTestCase;->fail(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "density = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ltest/utils/DevicePropertyTestCase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltest/utils/DevicePropertyTestCase;->fail(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public testpx2dip()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Ltest/utils/DevicePropertyTestCase;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c0

    invoke-static {v1, v2}, Ltest/utils/DevicePropertyTestCase$DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v0

    .line 31
    .local v0, spValue:I
    const-string/jumbo v1, "Device Property TestCase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "px 24,sp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public testpx2sp()V
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Ltest/utils/DevicePropertyTestCase;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c0

    invoke-static {v1, v2}, Ltest/utils/DevicePropertyTestCase$DisplayUtil;->px2sp(Landroid/content/Context;F)I

    move-result v0

    .line 27
    .local v0, spValue:I
    const-string/jumbo v1, "Device Property TestCase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "px 24,sp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
