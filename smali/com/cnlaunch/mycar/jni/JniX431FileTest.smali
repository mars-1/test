.class public Lcom/cnlaunch/mycar/jni/JniX431FileTest;
.super Ljunit/framework/TestCase;
.source "JniX431FileTest.java"


# static fields
.field private static final DS_TYPE_1:I = 0x100

.field private static final DS_TYPE_2:I = 0x101

.field private static final DS_TYPE_3:I = 0x200

.field private static final DS_TYPE_4:I = 0x203

.field private static final DS_TYPE_5:I = 0x205

.field private static final DS_TYPE_6:I = 0x300

.field private static final DS_TYPE_7:I = 0x301

.field private static final DS_TYPE_8:I = 0x313

.field private static final DS_TYPE_9:I = 0x303

.field private static final TAG:Ljava/lang/String; = "JniX431FileTest"

.field private static mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/JniX431File;-><init>()V

    sput-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private TEST_GroupItemReadDSInOrderTest()V
    .locals 14

    .prologue
    .line 1763
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "itemtest.x431"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1764
    .local v4, dstfile:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1766
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v9

    .line 1767
    .local v9, hlsx:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1769
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7, v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1770
    .local v7, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v12, 0xa

    invoke-direct {v5, v12}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1773
    .local v5, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v7, v13, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 1774
    .local v6, file:I
    if-eqz v6, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1776
    new-instance v0, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1777
    .local v0, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1778
    .local v1, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6, v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1779
    const-string/jumbo v12, "cn"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string/jumbo v12, "en"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1784
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v8

    .line 1785
    .local v8, grp:I
    if-eqz v8, :cond_3

    const/4 v12, 0x1

    :goto_3
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1787
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdscolcount(I)I

    move-result v3

    .line 1788
    .local v3, dscols:I
    const/16 v12, 0x9

    if-ne v3, v12, :cond_4

    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1790
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstdsitem(I)I

    move-result v10

    .line 1792
    .local v10, item:I
    const/16 v12, 0xa

    new-array v11, v12, [Ljava/lang/String;

    .line 1793
    .local v11, textstrs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1794
    .local v2, count:I
    :goto_5
    if-nez v10, :cond_5

    .line 1851
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1852
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1853
    return-void

    .line 1774
    .end local v0           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v1           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #count:I
    .end local v3           #dscols:I
    .end local v8           #grp:I
    .end local v10           #item:I
    .end local v11           #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1778
    .restart local v0       #code:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v1       #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1782
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1785
    .restart local v8       #grp:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1788
    .restart local v3       #dscols:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 1795
    .restart local v2       #count:I
    .restart local v10       #item:I
    .restart local v11       #textstrs:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1796
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_selectreadtextlang(ILjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_6
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1798
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v13, 0x9

    invoke-virtual {v12, v10, v11, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    :goto_7
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1799
    sparse-switch v2, :sswitch_data_0

    .line 1822
    :goto_8
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_selectreadtextlang(ILjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x1

    :goto_9
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1824
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v13, 0x9

    invoke-virtual {v12, v10, v11, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_a
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1825
    sparse-switch v2, :sswitch_data_1

    .line 1848
    :goto_b
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v10, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readrelndsitem(II)I

    move-result v10

    goto :goto_5

    .line 1796
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 1798
    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 1801
    :sswitch_0
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,3"

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1806
    :sswitch_1
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,4"

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1811
    :sswitch_2
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,7"

    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1816
    :sswitch_3
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,5"

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1822
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1824
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1827
    :sswitch_4
    const-string/jumbo v12, "ds item1,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v12, "ds item1,3"

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string/jumbo v12, "ds item1,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1832
    :sswitch_5
    const-string/jumbo v12, "ds item2,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string/jumbo v12, "ds item2,4"

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v12, "ds item2,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1837
    :sswitch_6
    const-string/jumbo v12, "ds item15,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v12, "ds item15,7"

    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string/jumbo v12, "ds item15,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1842
    :sswitch_7
    const-string/jumbo v12, "ds item30,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string/jumbo v12, "ds item30,5"

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string/jumbo v12, "ds item30,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1799
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xf -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch

    .line 1825
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0xf -> :sswitch_6
        0x1e -> :sswitch_7
    .end sparse-switch
.end method

.method private TEST_GroupItemReadDSReverseOrderTest()V
    .locals 14

    .prologue
    .line 1856
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "itemtest.x431"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1857
    .local v4, dstfile:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1859
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v9

    .line 1860
    .local v9, hlsx:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1862
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7, v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v7, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v12, 0xa

    invoke-direct {v5, v12}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1866
    .local v5, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v7, v13, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 1867
    .local v6, file:I
    if-eqz v6, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1869
    new-instance v0, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1870
    .local v0, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1871
    .local v1, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6, v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1872
    const-string/jumbo v12, "cn"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string/jumbo v12, "en"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1877
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v8

    .line 1878
    .local v8, grp:I
    if-eqz v8, :cond_3

    const/4 v12, 0x1

    :goto_3
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1880
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdscolcount(I)I

    move-result v3

    .line 1881
    .local v3, dscols:I
    const/16 v12, 0x9

    if-ne v3, v12, :cond_4

    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1883
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readlastdsitem(I)I

    move-result v10

    .line 1885
    .local v10, item:I
    const/16 v12, 0xa

    new-array v11, v12, [Ljava/lang/String;

    .line 1886
    .local v11, textstrs:[Ljava/lang/String;
    const/16 v2, 0x1e

    .line 1887
    .local v2, count:I
    :goto_5
    if-nez v10, :cond_5

    .line 1945
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1946
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1948
    return-void

    .line 1867
    .end local v0           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v1           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #count:I
    .end local v3           #dscols:I
    .end local v8           #grp:I
    .end local v10           #item:I
    .end local v11           #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1871
    .restart local v0       #code:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v1       #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1875
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1878
    .restart local v8       #grp:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1881
    .restart local v3       #dscols:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 1888
    .restart local v2       #count:I
    .restart local v10       #item:I
    .restart local v11       #textstrs:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1889
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_selectreadtextlang(ILjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_6
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1891
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v13, 0x9

    invoke-virtual {v12, v10, v11, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    :goto_7
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1892
    sparse-switch v2, :sswitch_data_0

    .line 1915
    :goto_8
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_selectreadtextlang(ILjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x1

    :goto_9
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1917
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v13, 0x9

    invoke-virtual {v12, v10, v11, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_a
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1918
    sparse-switch v2, :sswitch_data_1

    .line 1941
    :goto_b
    add-int/lit8 v2, v2, -0x1

    .line 1942
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v10, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readrelndsitem(II)I

    move-result v10

    goto :goto_5

    .line 1889
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 1891
    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 1894
    :sswitch_0
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,3"

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c1,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1899
    :sswitch_1
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,4"

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c2,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1904
    :sswitch_2
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,7"

    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c15,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1909
    :sswitch_3
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,5"

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string/jumbo v12, "\u6570\u636e\u6d41 \u6570\u503c30,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1915
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1917
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1920
    :sswitch_4
    const-string/jumbo v12, "ds item1,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string/jumbo v12, "ds item1,3"

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string/jumbo v12, "ds item1,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1925
    :sswitch_5
    const-string/jumbo v12, "ds item2,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string/jumbo v12, "ds item2,4"

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string/jumbo v12, "ds item2,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1930
    :sswitch_6
    const-string/jumbo v12, "ds item15,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string/jumbo v12, "ds item15,7"

    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string/jumbo v12, "ds item15,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1935
    :sswitch_7
    const-string/jumbo v12, "ds item30,1"

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const-string/jumbo v12, "ds item30,5"

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string/jumbo v12, "ds item30,9"

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1892
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xf -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch

    .line 1918
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0xf -> :sswitch_6
        0x1e -> :sswitch_7
    .end sparse-switch
.end method

.method private TEST_GroupItemReadDtcInOrderTest()V
    .locals 14

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v13, "itemtest.x431"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1503
    .local v7, dstfile:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1505
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v12

    .line 1506
    .local v12, hlsx:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1508
    new-instance v10, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v10, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v10, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v8, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1512
    .local v8, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v10, v13, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v9

    .line 1513
    .local v9, file:I
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1515
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1517
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v0, v9, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v11

    .line 1518
    .local v11, grp:I
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1520
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtccount(I)I

    move-result v0

    const/16 v13, 0xc

    if-ne v0, v13, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1522
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstdtcitem(I)I

    move-result v1

    .line 1524
    .local v1, item:I
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1525
    .local v2, dtc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1526
    .local v3, state:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1527
    .local v4, desc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v5}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1528
    .local v5, dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    const/4 v6, 0x0

    .line 1529
    .local v6, count:I
    :goto_4
    if-nez v1, :cond_4

    .line 1573
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1574
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1575
    return-void

    .line 1513
    .end local v1           #item:I
    .end local v2           #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v3           #state:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v4           #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v5           #dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v6           #count:I
    .end local v11           #grp:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1515
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1518
    .restart local v11       #grp:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1520
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 1530
    .restart local v1       #item:I
    .restart local v2       #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v3       #state:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v4       #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v5       #dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v6       #count:I
    :cond_4
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtc(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1531
    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    .line 1570
    :goto_6
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readnextdtcitem(I)I

    move-result v1

    goto :goto_4

    .line 1530
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 1533
    :pswitch_0
    const-string/jumbo v0, "P1200"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1536
    :pswitch_1
    const-string/jumbo v0, "P1201"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1539
    :pswitch_2
    const-string/jumbo v0, "P1202"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1542
    :pswitch_3
    const-string/jumbo v0, "P1500"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1545
    :pswitch_4
    const-string/jumbo v0, "P1501"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1548
    :pswitch_5
    const-string/jumbo v0, "P1700"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1551
    :pswitch_6
    const-string/jumbo v0, "P1701"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1554
    :pswitch_7
    const-string/jumbo v0, "P1702"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1557
    :pswitch_8
    const-string/jumbo v0, "P1703"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1560
    :pswitch_9
    const-string/jumbo v0, "P1704"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1563
    :pswitch_a
    const-string/jumbo v0, "P1705"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1566
    :pswitch_b
    const-string/jumbo v0, "P1700"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private TEST_GroupItemReadDtcReverseOrderTest()V
    .locals 14

    .prologue
    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v13, "itemtest.x431"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1579
    .local v7, dstfile:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1581
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v12

    .line 1582
    .local v12, hlsx:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1584
    new-instance v10, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v10, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v10, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v8, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1588
    .local v8, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v10, v13, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v9

    .line 1589
    .local v9, file:I
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1591
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1593
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v0, v9, v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v11

    .line 1594
    .local v11, grp:I
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1596
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtccount(I)I

    move-result v0

    const/16 v13, 0xc

    if-ne v0, v13, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1598
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readlastdtcitem(I)I

    move-result v1

    .line 1600
    .local v1, item:I
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1601
    .local v2, dtc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1602
    .local v3, state:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1603
    .local v4, desc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v5}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1604
    .local v5, dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    const/16 v6, 0xc

    .line 1605
    .local v6, count:I
    :goto_4
    if-nez v1, :cond_4

    .line 1650
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1651
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1653
    return-void

    .line 1589
    .end local v1           #item:I
    .end local v2           #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v3           #state:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v4           #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v5           #dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v6           #count:I
    .end local v11           #grp:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1591
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1594
    .restart local v11       #grp:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1596
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 1606
    .restart local v1       #item:I
    .restart local v2       #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v3       #state:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v4       #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v5       #dtctime:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v6       #count:I
    :cond_4
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtc(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1607
    packed-switch v6, :pswitch_data_0

    .line 1646
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 1647
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readprevdtcitem(I)I

    move-result v1

    goto :goto_4

    .line 1606
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 1609
    :pswitch_0
    const-string/jumbo v0, "P1200"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1612
    :pswitch_1
    const-string/jumbo v0, "P1201"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1615
    :pswitch_2
    const-string/jumbo v0, "P1202"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1618
    :pswitch_3
    const-string/jumbo v0, "P1500"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1621
    :pswitch_4
    const-string/jumbo v0, "P1501"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1624
    :pswitch_5
    const-string/jumbo v0, "P1700"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1627
    :pswitch_6
    const-string/jumbo v0, "P1701"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1630
    :pswitch_7
    const-string/jumbo v0, "P1702"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1633
    :pswitch_8
    const-string/jumbo v0, "P1703"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1636
    :pswitch_9
    const-string/jumbo v0, "P1704"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1639
    :pswitch_a
    const-string/jumbo v0, "P1705"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1642
    :pswitch_b
    const-string/jumbo v0, "P1700"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private TEST_GroupItemReadFFInOrderTest()V
    .locals 13

    .prologue
    .line 1656
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "itemtest.x431"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, dstfile:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1659
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v8

    .line 1660
    .local v8, hlsx:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1662
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6, v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v6, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v11, 0xa

    invoke-direct {v4, v11}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1666
    .local v4, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v6, v12, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 1667
    .local v5, file:I
    if-eqz v5, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1669
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1671
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v7

    .line 1672
    .local v7, grp:I
    if-eqz v7, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1674
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readffitemcount(I)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1676
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstffitem(I)I

    move-result v9

    .line 1678
    .local v9, item:I
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1679
    .local v3, dtc:Lcom/cnlaunch/mycar/jni/X431String;
    const/16 v11, 0xa

    new-array v10, v11, [Ljava/lang/String;

    .line 1680
    .local v10, textstrs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1681
    .local v1, count:I
    :goto_4
    if-nez v9, :cond_4

    .line 1704
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1705
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1706
    return-void

    .line 1667
    .end local v1           #count:I
    .end local v3           #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v7           #grp:I
    .end local v9           #item:I
    .end local v10           #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1669
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1672
    .restart local v7       #grp:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 1674
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1682
    .restart local v1       #count:I
    .restart local v3       #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v9       #item:I
    .restart local v10       #textstrs:[Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readffcolcount(I)I

    move-result v0

    .line 1683
    .local v0, cols:I
    const/4 v11, 0x5

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1685
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x5

    invoke-virtual {v11, v9, v3, v10, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfreezeframe(ILcom/cnlaunch/mycar/jni/X431String;[Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_6
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1686
    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1701
    :goto_7
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readnextffitem(I)I

    move-result v9

    goto :goto_4

    .line 1683
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 1685
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 1688
    :pswitch_0
    const-string/jumbo v11, "P1300"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1691
    :pswitch_1
    const-string/jumbo v11, "P1301"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1694
    :pswitch_2
    const-string/jumbo v11, "P1600"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1697
    :pswitch_3
    const-string/jumbo v11, "P1601"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private TEST_GroupItemReadFFReverseOrderTest()V
    .locals 13

    .prologue
    .line 1709
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "itemtest.x431"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1710
    .local v2, dstfile:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1712
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v8

    .line 1713
    .local v8, hlsx:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1715
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6, v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1716
    .local v6, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v11, 0xa

    invoke-direct {v4, v11}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1719
    .local v4, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v6, v12, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 1720
    .local v5, file:I
    if-eqz v5, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1722
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1724
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v7

    .line 1725
    .local v7, grp:I
    if-eqz v7, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1727
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readffitemcount(I)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1729
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readlastffitem(I)I

    move-result v9

    .line 1731
    .local v9, item:I
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1732
    .local v3, dtc:Lcom/cnlaunch/mycar/jni/X431String;
    const/16 v11, 0xa

    new-array v10, v11, [Ljava/lang/String;

    .line 1733
    .local v10, textstrs:[Ljava/lang/String;
    const/4 v1, 0x4

    .line 1734
    .local v1, count:I
    :goto_4
    if-nez v9, :cond_4

    .line 1758
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1759
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1760
    return-void

    .line 1720
    .end local v1           #count:I
    .end local v3           #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v7           #grp:I
    .end local v9           #item:I
    .end local v10           #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1722
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1725
    .restart local v7       #grp:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 1727
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1735
    .restart local v1       #count:I
    .restart local v3       #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v9       #item:I
    .restart local v10       #textstrs:[Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readffcolcount(I)I

    move-result v0

    .line 1736
    .local v0, cols:I
    const/4 v11, 0x5

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1738
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v12, 0x5

    invoke-virtual {v11, v9, v3, v10, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfreezeframe(ILcom/cnlaunch/mycar/jni/X431String;[Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_6
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1739
    packed-switch v1, :pswitch_data_0

    .line 1754
    :goto_7
    add-int/lit8 v1, v1, -0x1

    .line 1755
    sget-object v11, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readprevffitem(I)I

    move-result v9

    goto :goto_4

    .line 1736
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 1738
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 1741
    :pswitch_0
    const-string/jumbo v11, "P1300"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1744
    :pswitch_1
    const-string/jumbo v11, "P1301"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1747
    :pswitch_2
    const-string/jumbo v11, "P1600"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1750
    :pswitch_3
    const-string/jumbo v11, "P1601"

    iget-object v12, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private TEST_GroupItemReadInOrderTest()V
    .locals 18

    .prologue
    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v17, "itemtest.x431"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1359
    .local v10, dstfile:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1361
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v14

    .line 1362
    .local v14, hlsx:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1364
    new-instance v13, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v13, v10}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v13, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v11, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v1, 0xa

    invoke-direct {v11, v1}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1368
    .local v11, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v14, v13, v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v12

    .line 1369
    .local v12, file:I
    if-eqz v12, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1371
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1373
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v12, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v2

    .line 1374
    .local v2, grp:I
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1377
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1378
    .local v3, name:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1379
    .local v4, protocol:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v5}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1380
    .local v5, vin:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1381
    .local v6, starttime:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1382
    .local v7, endtime:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v8, Lcom/cnlaunch/mycar/jni/X431Integer;

    invoke-direct {v8}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>()V

    .line 1384
    .local v8, dsinterval:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual/range {v1 .. v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupinfo(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1385
    const-string/jumbo v1, "Audi"

    iget-object v0, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v1, "Canbus"

    iget-object v0, v4, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v1, "12345678976543210"

    iget-object v0, v5, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v1, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-lt v1, v0, :cond_4

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1389
    iget-object v1, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-lt v1, v0, :cond_5

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1390
    const/4 v1, 0x2

    iget v0, v8, Lcom/cnlaunch/mycar/jni/X431Integer;->mValue:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v1, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1392
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readalltype(I)I

    move-result v16

    .line 1393
    .local v16, itemtype:I
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1394
    and-int/lit8 v1, v16, 0x2

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_7
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1395
    and-int/lit8 v1, v16, 0x8

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_8
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1396
    and-int/lit8 v1, v16, 0x10

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1397
    and-int/lit8 v1, v16, 0x4

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1399
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstitem(I)I

    move-result v15

    .line 1401
    .local v15, item:I
    const/4 v9, 0x0

    .line 1402
    .local v9, count:I
    :goto_b
    if-nez v15, :cond_b

    .line 1433
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1434
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v14}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1435
    return-void

    .line 1369
    .end local v2           #grp:I
    .end local v3           #name:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v4           #protocol:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v5           #vin:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v6           #starttime:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v7           #endtime:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v8           #dsinterval:Lcom/cnlaunch/mycar/jni/X431Integer;
    .end local v9           #count:I
    .end local v15           #item:I
    .end local v16           #itemtype:I
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1371
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1374
    .restart local v2       #grp:I
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1384
    .restart local v3       #name:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v4       #protocol:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v5       #vin:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v6       #starttime:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v7       #endtime:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v8       #dsinterval:Lcom/cnlaunch/mycar/jni/X431Integer;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1388
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 1389
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 1393
    .restart local v16       #itemtype:I
    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 1394
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 1395
    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    .line 1396
    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    .line 1397
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 1403
    .restart local v9       #count:I
    .restart local v15       #item:I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 1404
    const/4 v1, 0x1

    if-ne v9, v1, :cond_e

    .line 1405
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1430
    :cond_c
    :goto_d
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readnextitem(I)I

    move-result v15

    goto :goto_b

    .line 1405
    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    .line 1406
    :cond_e
    const/4 v1, 0x2

    if-lt v9, v1, :cond_10

    const/4 v1, 0x4

    if-gt v9, v1, :cond_10

    .line 1407
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_d

    :cond_f
    const/4 v1, 0x0

    goto :goto_e

    .line 1408
    :cond_10
    const/4 v1, 0x5

    if-ne v9, v1, :cond_12

    .line 1409
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_f
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 1410
    :cond_12
    const/4 v1, 0x6

    if-ne v9, v1, :cond_14

    .line 1411
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_10
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    goto :goto_10

    .line 1412
    :cond_14
    const/4 v1, 0x7

    if-lt v9, v1, :cond_16

    const/16 v1, 0x13

    if-gt v9, v1, :cond_16

    .line 1413
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :goto_11
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    goto :goto_11

    .line 1414
    :cond_16
    const/16 v1, 0x14

    if-lt v9, v1, :cond_18

    const/16 v1, 0x15

    if-gt v9, v1, :cond_18

    .line 1415
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_12
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    goto :goto_12

    .line 1416
    :cond_18
    const/16 v1, 0x16

    if-lt v9, v1, :cond_1a

    const/16 v1, 0x1c

    if-gt v9, v1, :cond_1a

    .line 1417
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_13
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_19
    const/4 v1, 0x0

    goto :goto_13

    .line 1418
    :cond_1a
    const/16 v1, 0x1d

    if-lt v9, v1, :cond_1c

    const/16 v1, 0x1e

    if-gt v9, v1, :cond_1c

    .line 1419
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_14

    .line 1420
    :cond_1c
    const/16 v1, 0x1f

    if-ne v9, v1, :cond_1e

    .line 1421
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_15
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_1d
    const/4 v1, 0x0

    goto :goto_15

    .line 1422
    :cond_1e
    const/16 v1, 0x20

    if-lt v9, v1, :cond_20

    const/16 v1, 0x29

    if-gt v9, v1, :cond_20

    .line 1423
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_16
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_1f
    const/4 v1, 0x0

    goto :goto_16

    .line 1424
    :cond_20
    const/16 v1, 0x2a

    if-lt v9, v1, :cond_22

    const/16 v1, 0x2b

    if-gt v9, v1, :cond_22

    .line 1425
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :goto_17
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_21
    const/4 v1, 0x0

    goto :goto_17

    .line 1426
    :cond_22
    const/16 v1, 0x2c

    if-lt v9, v1, :cond_c

    const/16 v1, 0x32

    if-gt v9, v1, :cond_c

    .line 1427
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    :goto_18
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_d

    :cond_23
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private TEST_GroupItemReadReverseOrderTest()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1438
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "itemtest.x431"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, dstfile:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1441
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v6

    .line 1442
    .local v6, hlsx:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1444
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4, v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v4, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v9, 0xa

    invoke-direct {v2, v9}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1448
    .local v2, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v6, v4, v10, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v3

    .line 1449
    .local v3, file:I
    if-eqz v3, :cond_0

    move v9, v10

    :goto_0
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1451
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v9

    if-ne v9, v10, :cond_1

    move v9, v10

    :goto_1
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1453
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v3, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v5

    .line 1454
    .local v5, grp:I
    if-eqz v5, :cond_2

    move v9, v10

    :goto_2
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1456
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readalltype(I)I

    move-result v8

    .line 1457
    .local v8, itemtype:I
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_3

    move v9, v10

    :goto_3
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1458
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_4

    move v9, v10

    :goto_4
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1459
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_5

    move v9, v10

    :goto_5
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1460
    and-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_6

    move v9, v10

    :goto_6
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1461
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_7

    move v9, v10

    :goto_7
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1463
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readlastitem(I)I

    move-result v7

    .line 1465
    .local v7, item:I
    const/16 v0, 0x32

    .line 1466
    .local v0, count:I
    :goto_8
    if-nez v7, :cond_8

    .line 1497
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1498
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1499
    return-void

    .end local v0           #count:I
    .end local v5           #grp:I
    .end local v7           #item:I
    .end local v8           #itemtype:I
    :cond_0
    move v9, v11

    .line 1449
    goto :goto_0

    :cond_1
    move v9, v11

    .line 1451
    goto :goto_1

    .restart local v5       #grp:I
    :cond_2
    move v9, v11

    .line 1454
    goto :goto_2

    .restart local v8       #itemtype:I
    :cond_3
    move v9, v11

    .line 1457
    goto :goto_3

    :cond_4
    move v9, v11

    .line 1458
    goto :goto_4

    :cond_5
    move v9, v11

    .line 1459
    goto :goto_5

    :cond_6
    move v9, v11

    .line 1460
    goto :goto_6

    :cond_7
    move v9, v11

    .line 1461
    goto :goto_7

    .line 1467
    .restart local v0       #count:I
    .restart local v7       #item:I
    :cond_8
    if-ne v0, v10, :cond_b

    .line 1468
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_a

    move v9, v10

    :goto_9
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1493
    :cond_9
    :goto_a
    add-int/lit8 v0, v0, -0x1

    .line 1494
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readprevitem(I)I

    move-result v7

    goto :goto_8

    :cond_a
    move v9, v11

    .line 1468
    goto :goto_9

    .line 1469
    :cond_b
    const/4 v9, 0x2

    if-lt v0, v9, :cond_d

    const/4 v9, 0x4

    if-gt v0, v9, :cond_d

    .line 1470
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    move v9, v10

    :goto_b
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_a

    :cond_c
    move v9, v11

    goto :goto_b

    .line 1471
    :cond_d
    const/4 v9, 0x5

    if-ne v0, v9, :cond_f

    .line 1472
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    move v9, v10

    :goto_c
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_a

    :cond_e
    move v9, v11

    goto :goto_c

    .line 1473
    :cond_f
    const/4 v9, 0x6

    if-ne v0, v9, :cond_11

    .line 1474
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_10

    move v9, v10

    :goto_d
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_a

    :cond_10
    move v9, v11

    goto :goto_d

    .line 1475
    :cond_11
    const/4 v9, 0x7

    if-lt v0, v9, :cond_13

    const/16 v9, 0x13

    if-gt v0, v9, :cond_13

    .line 1476
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_12

    move v9, v10

    :goto_e
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_a

    :cond_12
    move v9, v11

    goto :goto_e

    .line 1477
    :cond_13
    const/16 v9, 0x14

    if-lt v0, v9, :cond_15

    const/16 v9, 0x15

    if-gt v0, v9, :cond_15

    .line 1478
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_14

    move v9, v10

    :goto_f
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto :goto_a

    :cond_14
    move v9, v11

    goto :goto_f

    .line 1479
    :cond_15
    const/16 v9, 0x16

    if-lt v0, v9, :cond_17

    const/16 v9, 0x1c

    if-gt v0, v9, :cond_17

    .line 1480
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_16

    move v9, v10

    :goto_10
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_16
    move v9, v11

    goto :goto_10

    .line 1481
    :cond_17
    const/16 v9, 0x1d

    if-lt v0, v9, :cond_19

    const/16 v9, 0x1e

    if-gt v0, v9, :cond_19

    .line 1482
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_18

    move v9, v10

    :goto_11
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_18
    move v9, v11

    goto :goto_11

    .line 1483
    :cond_19
    const/16 v9, 0x1f

    if-ne v0, v9, :cond_1b

    .line 1484
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_1a

    move v9, v10

    :goto_12
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_1a
    move v9, v11

    goto :goto_12

    .line 1485
    :cond_1b
    const/16 v9, 0x20

    if-lt v0, v9, :cond_1d

    const/16 v9, 0x29

    if-gt v0, v9, :cond_1d

    .line 1486
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1c

    move v9, v10

    :goto_13
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_1c
    move v9, v11

    goto :goto_13

    .line 1487
    :cond_1d
    const/16 v9, 0x2a

    if-lt v0, v9, :cond_1f

    const/16 v9, 0x2b

    if-gt v0, v9, :cond_1f

    .line 1488
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_1e

    move v9, v10

    :goto_14
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_1e
    move v9, v11

    goto :goto_14

    .line 1489
    :cond_1f
    const/16 v9, 0x2c

    if-lt v0, v9, :cond_9

    const/16 v9, 0x32

    if-gt v0, v9, :cond_9

    .line 1490
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readitemtype(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_20

    move v9, v10

    :goto_15
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    goto/16 :goto_a

    :cond_20
    move v9, v11

    goto :goto_15
.end method

.method private TEST_GroupItemWriteTest()V
    .locals 13

    .prologue
    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "itemtest.x431"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1298
    .local v7, dstfile:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->DeleFile(Ljava/lang/String;)Z

    .line 1299
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertFalse(Z)V

    .line 1301
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v11

    .line 1302
    .local v11, hlsx:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1304
    new-instance v9, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v9, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v9, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v8, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1308
    .local v8, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v2, 0x2

    invoke-virtual {v0, v11, v9, v2, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v1

    .line 1309
    .local v1, file:I
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1311
    invoke-virtual {p0, v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Baseinfo_itemtest(I)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1313
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v2, "Audi"

    const-string/jumbo v3, "Canbus"

    const-string/jumbo v4, "12345678976543210"

    const-string/jumbo v5, "2008/09/26 21:30:31"

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writenewgroup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 1314
    .local v10, grp:I
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1316
    invoke-virtual {p0, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Rdn(I)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1317
    const-string/jumbo v0, "P1200"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1318
    const-string/jumbo v0, "P1201"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1319
    const-string/jumbo v0, "P1202"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1320
    invoke-virtual {p0, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Vi(I)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1322
    const/4 v12, 0x1

    .line 1323
    .local v12, lineno:I
    invoke-virtual {p0, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_DsBasics(I)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1324
    const/16 v0, 0xd

    invoke-virtual {p0, v10, v12, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Ds(III)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1326
    add-int/lit8 v12, v12, 0xd

    .line 1327
    const-string/jumbo v0, "P1300"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_FF(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1328
    const-string/jumbo v0, "P1301"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_FF(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1329
    const/4 v0, 0x7

    invoke-virtual {p0, v10, v12, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Ds(III)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1331
    add-int/lit8 v12, v12, 0x7

    .line 1332
    const-string/jumbo v0, "P1500"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1333
    const-string/jumbo v0, "P1501"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1335
    invoke-virtual {p0, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Rdn(I)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1336
    const/16 v0, 0xa

    invoke-virtual {p0, v10, v12, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Ds(III)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1338
    const-string/jumbo v0, "P1600"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_FF(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1339
    const-string/jumbo v0, "P1601"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_FF(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1341
    const-string/jumbo v0, "P1700"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1342
    const-string/jumbo v0, "P1701"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1343
    const-string/jumbo v0, "P1702"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1344
    const-string/jumbo v0, "P1703"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1345
    const-string/jumbo v0, "P1704"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1346
    const-string/jumbo v0, "P1705"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1347
    const-string/jumbo v0, "P1700"

    invoke-virtual {p0, v10, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Dtcs(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1349
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v2, "2008/09/26/23:01:03"

    invoke-virtual {v0, v10, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_finishnewgroup(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1351
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1352
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1354
    const-wide/16 v2, 0x331a

    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->GetFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(JJ)V

    .line 1355
    return-void

    .line 1309
    .end local v10           #grp:I
    .end local v12           #lineno:I
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1314
    .restart local v10       #grp:I
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1349
    .restart local v12       #lineno:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private TEST_NewFileBasicDataReadTest()V
    .locals 14

    .prologue
    .line 1056
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "newfilebasicdata.x431"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1058
    .local v4, dstfile:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1060
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v8

    .line 1061
    .local v8, hlsx:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1063
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7, v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v7, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v12, 0xa

    invoke-direct {v5, v12}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1067
    .local v5, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v7, v13, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 1068
    .local v6, file:I
    if-eqz v6, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1070
    new-instance v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 1071
    .local v1, bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    const/4 v12, 0x0

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1072
    const-string/jumbo v12, "980241111111"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/16 v12, 0x15

    iget-short v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1074
    const/16 v12, 0x3a8

    iget v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1075
    const-string/jumbo v12, "cn"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v12, "en"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v12, "Chinese Simplified"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string/jumbo v12, "Audi V13.00"

    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v12, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x18

    if-lt v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1081
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;-><init>()V

    .line 1082
    .local v0, ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    const/4 v12, 0x0

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1083
    const-string/jumbo v12, "12345678901234567"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->vin:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v12, "Volkswagen"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->make:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v12, "\u5965\u8fea"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->model:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v12, "2006"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->year:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v12, "China"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->madein:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string/jumbo v12, "chassis"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->chassis:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v12, "engine model"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->enginemodel:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v12, "2.0L"

    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->displacement:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    new-instance v9, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;

    invoke-direct {v9}, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;-><init>()V

    .line 1093
    .local v9, spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    const/4 v12, 0x0

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1094
    const-string/jumbo v12, "\u7ecf\u9500\u5546A"

    iget-object v13, v9, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-string/jumbo v12, "88888888"

    iget-object v13, v9, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->phone:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    new-instance v10, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;

    invoke-direct {v10}, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;-><init>()V

    .line 1098
    .local v10, ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    const/4 v12, 0x0

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1099
    const-string/jumbo v12, "customer A"

    iget-object v13, v10, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string/jumbo v12, "77777777"

    iget-object v13, v10, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->phone:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v12, "123456"

    iget-object v13, v10, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->license:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/4 v12, 0x0

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1105
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_fileversion(I)S

    move-result v11

    .line 1106
    .local v11, version:S
    and-int/lit16 v12, v11, 0x300

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1108
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1109
    .local v2, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1110
    .local v3, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    const/4 v12, 0x2

    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v2, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1111
    const-string/jumbo v12, "cn"

    iget-object v13, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string/jumbo v12, "en"

    iget-object v13, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1115
    sget-object v12, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v12, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1117
    return-void

    .line 1068
    .end local v0           #ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    .end local v1           #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .end local v2           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v3           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v9           #spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    .end local v10           #ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    .end local v11           #version:S
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1079
    .restart local v1       #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1106
    .restart local v0       #ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    .restart local v9       #spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    .restart local v10       #ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    .restart local v11       #version:S
    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private TEST_NewFileBasicDataWriteTest()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1020
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, "newfilebasicdata.x431"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, dstfile:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->DeleFile(Ljava/lang/String;)Z

    .line 1023
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertFalse(Z)V

    .line 1025
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v4

    .line 1026
    .local v4, hlsx:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1028
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v3, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v10, 0xa

    invoke-direct {v1, v10}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1032
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v13, 0x2

    invoke-virtual {v10, v4, v3, v13, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v2

    .line 1033
    .local v2, file:I
    if-eqz v2, :cond_0

    move v10, v11

    :goto_0
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1035
    invoke-virtual {p0, v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Userinfo(I)Z

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1036
    invoke-virtual {p0, v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Baseinfo(I)Z

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1037
    invoke-virtual {p0, v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Spinfo(I)Z

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1038
    invoke-virtual {p0, v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Autoinfo(I)Z

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1040
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1041
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1043
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v10

    and-int/lit8 v5, v10, 0x1

    .line 1044
    .local v5, iRet1:I
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v10

    and-int/lit8 v6, v10, 0x2

    .line 1045
    .local v6, iRet2:I
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v10

    and-int/lit16 v7, v10, 0x2000

    .line 1046
    .local v7, iRet3:I
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->GetFileSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 1048
    .local v8, lRet:J
    if-eqz v5, :cond_1

    move v10, v11

    :goto_1
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1049
    if-eqz v6, :cond_2

    move v10, v11

    :goto_2
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1050
    if-eqz v7, :cond_3

    :goto_3
    invoke-static {v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1052
    const-wide/16 v10, 0x1d7

    invoke-static {v10, v11, v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(JJ)V

    .line 1053
    return-void

    .end local v5           #iRet1:I
    .end local v6           #iRet2:I
    .end local v7           #iRet3:I
    .end local v8           #lRet:J
    :cond_0
    move v10, v12

    .line 1033
    goto :goto_0

    .restart local v5       #iRet1:I
    .restart local v6       #iRet2:I
    .restart local v7       #iRet3:I
    .restart local v8       #lRet:J
    :cond_1
    move v10, v12

    .line 1048
    goto :goto_1

    :cond_2
    move v10, v12

    .line 1049
    goto :goto_2

    :cond_3
    move v11, v12

    .line 1050
    goto :goto_3
.end method

.method private TEST_NewFileChsExtReadTest()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "newfilechsext.x431"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, dstfile:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1234
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v7

    .line 1235
    .local v7, hlsx:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1237
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6, v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v6, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v9, 0xa

    invoke-direct {v4, v9}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1241
    .local v4, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7, v6, v10, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 1242
    .local v5, file:I
    if-eqz v5, :cond_0

    move v9, v10

    :goto_0
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1244
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 1245
    .local v0, bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v9

    invoke-static {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1246
    const-string/jumbo v9, "980241111111"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/16 v9, 0x15

    iget-short v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1248
    const v9, 0xcadc

    iget v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1249
    const-string/jumbo v9, "cn"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v9, "en"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string/jumbo v9, "Chinese Simplified"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string/jumbo v9, "Audi V13.00"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x18

    if-lt v9, v12, :cond_1

    move v9, v10

    :goto_1
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1255
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v9

    invoke-static {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1257
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_fileversion(I)S

    move-result v8

    .line 1258
    .local v8, version:S
    and-int/lit16 v9, v8, 0x300

    if-eqz v9, :cond_2

    :goto_2
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1260
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1261
    .local v1, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1262
    .local v2, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    const/4 v9, 0x2

    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v5, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1263
    const-string/jumbo v9, "cn"

    iget-object v10, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v9, "en"

    iget-object v10, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1267
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1268
    return-void

    .end local v0           #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .end local v1           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v8           #version:S
    :cond_0
    move v9, v11

    .line 1242
    goto/16 :goto_0

    .restart local v0       #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    :cond_1
    move v9, v11

    .line 1253
    goto :goto_1

    .restart local v8       #version:S
    :cond_2
    move v10, v11

    .line 1258
    goto :goto_2
.end method

.method private TEST_NewFileChsExtWriteTest()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "newfilechsext.x431"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, dstfile:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->DeleFile(Ljava/lang/String;)Z

    .line 1207
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertFalse(Z)V

    .line 1209
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v4

    .line 1210
    .local v4, hlsx:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1212
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v3, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v5, 0xa

    invoke-direct {v1, v5}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1216
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v8, 0x2

    invoke-virtual {v5, v4, v3, v8, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v2

    .line 1217
    .local v2, file:I
    if-eqz v2, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1219
    const-string/jumbo v5, "chs"

    const-string/jumbo v8, "Chinese Simplified"

    invoke-virtual {p0, v2, v5, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Baseinfo_langexttest(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1221
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1222
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1224
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1225
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1226
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_3

    :goto_3
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1227
    const-wide/16 v5, 0x15f

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->GetFileSize(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(JJ)V

    .line 1228
    return-void

    :cond_0
    move v5, v7

    .line 1217
    goto :goto_0

    :cond_1
    move v5, v7

    .line 1224
    goto :goto_1

    :cond_2
    move v5, v7

    .line 1225
    goto :goto_2

    :cond_3
    move v6, v7

    .line 1226
    goto :goto_3
.end method

.method private TEST_NewFileJaExtReadTest()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "newfilejaext.x431"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, dstfile:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1168
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v7

    .line 1169
    .local v7, hlsx:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1171
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6, v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v6, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v9, 0xa

    invoke-direct {v4, v9}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1175
    .local v4, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7, v6, v10, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 1176
    .local v5, file:I
    if-eqz v5, :cond_0

    move v9, v10

    :goto_0
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1178
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 1179
    .local v0, bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v9

    invoke-static {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1180
    const-string/jumbo v9, "980241111111"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/16 v9, 0x15

    iget-short v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1182
    const v9, 0xcadc

    iget v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1183
    const-string/jumbo v9, "jp"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string/jumbo v9, "en"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string/jumbo v9, "Japanese"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v9, "Audi V13.00"

    iget-object v12, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x18

    if-lt v9, v12, :cond_1

    move v9, v10

    :goto_1
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1189
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v9

    invoke-static {v11, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1191
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_fileversion(I)S

    move-result v8

    .line 1192
    .local v8, version:S
    and-int/lit16 v9, v8, 0x300

    if-eqz v9, :cond_2

    :goto_2
    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1194
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1195
    .local v1, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1196
    .local v2, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    const/4 v9, 0x2

    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v5, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1197
    const-string/jumbo v9, "jp"

    iget-object v10, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string/jumbo v9, "en"

    iget-object v10, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1201
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1202
    return-void

    .end local v0           #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .end local v1           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v8           #version:S
    :cond_0
    move v9, v11

    .line 1176
    goto/16 :goto_0

    .restart local v0       #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    :cond_1
    move v9, v11

    .line 1187
    goto :goto_1

    .restart local v8       #version:S
    :cond_2
    move v10, v11

    .line 1192
    goto :goto_2
.end method

.method private TEST_NewFileJaExtWriteTest()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "newfilejaext.x431"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, dstfile:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->DeleFile(Ljava/lang/String;)Z

    .line 1141
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertFalse(Z)V

    .line 1143
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v4

    .line 1144
    .local v4, hlsx:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 1146
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v3, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v5, 0xa

    invoke-direct {v1, v5}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1150
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v8, 0x2

    invoke-virtual {v5, v4, v3, v8, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v2

    .line 1151
    .local v2, file:I
    if-eqz v2, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1153
    const-string/jumbo v5, "ja"

    const-string/jumbo v8, "Japanese"

    invoke-virtual {p0, v2, v5, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_Baseinfo_langexttest(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1155
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1156
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1158
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1159
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1160
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v5

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_3

    :goto_3
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1161
    const-wide/16 v5, 0x154

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->GetFileSize(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(JJ)V

    .line 1162
    return-void

    :cond_0
    move v5, v7

    .line 1151
    goto :goto_0

    :cond_1
    move v5, v7

    .line 1158
    goto :goto_1

    :cond_2
    move v5, v7

    .line 1159
    goto :goto_2

    :cond_3
    move v6, v7

    .line 1160
    goto :goto_3
.end method

.method private TEST_NewFileNoDataReadTest()V
    .locals 15

    .prologue
    .line 948
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "newfilenodata.x431"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, dstfile:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 951
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v8

    .line 952
    .local v8, hlsx:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 954
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7, v4}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 955
    .local v7, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v13, 0xa

    invoke-direct {v5, v13}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 958
    .local v5, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v7, v14, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 959
    .local v6, file:I
    if-eqz v6, :cond_0

    const/4 v13, 0x1

    :goto_0
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 961
    new-instance v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 962
    .local v1, bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 963
    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 966
    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 967
    const/4 v13, 0x0

    iget-short v14, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 968
    const/16 v13, 0x4e4

    iget v14, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 969
    const-string/jumbo v13, "English"

    iget-object v14, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string/jumbo v13, "en"

    iget-object v14, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 972
    const/4 v13, 0x0

    iget-object v14, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v13, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x18

    if-lt v13, v14, :cond_2

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 975
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;-><init>()V

    .line 976
    .local v0, ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 979
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->vin:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 980
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->make:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 981
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->model:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 982
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->year:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 983
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->madein:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 984
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->chassis:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 985
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->enginemodel:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 986
    iget-object v13, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->displacement:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 988
    new-instance v10, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;

    invoke-direct {v10}, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;-><init>()V

    .line 989
    .local v10, spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 992
    iget-object v13, v10, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 993
    iget-object v13, v10, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->phone:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 995
    new-instance v11, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;

    invoke-direct {v11}, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;-><init>()V

    .line 996
    .local v11, ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_5
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 997
    iget-object v13, v11, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 998
    iget-object v13, v11, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->phone:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 999
    iget-object v13, v11, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->license:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 1001
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_6
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1003
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_fileversion(I)S

    move-result v12

    .line 1004
    .local v12, version:S
    and-int/lit16 v9, v12, 0x300

    .line 1005
    .local v9, iTmp:I
    if-eqz v9, :cond_7

    const/4 v13, 0x1

    :goto_7
    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 1007
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1008
    .local v2, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 1011
    .local v3, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    const/4 v13, 0x1

    sget-object v14, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v14, v6, v2, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 1012
    const-string/jumbo v13, "en"

    iget-object v14, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v13, v3, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 1015
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 1016
    sget-object v13, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v13, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 1017
    return-void

    .line 959
    .end local v0           #ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    .end local v1           #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .end local v2           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v3           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v9           #iTmp:I
    .end local v10           #spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    .end local v11           #ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    .end local v12           #version:S
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 962
    .restart local v1       #bi:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 973
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 976
    .restart local v0       #ai:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 989
    .restart local v10       #spi:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 996
    .restart local v11       #ui:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 1001
    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    .line 1005
    .restart local v9       #iTmp:I
    .restart local v12       #version:S
    :cond_7
    const/4 v13, 0x0

    goto :goto_7
.end method

.method private TEST_NewFileNoDataWriteTest()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 919
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "newfilenodata.x431"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, dstfile:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->DeleFile(Ljava/lang/String;)Z

    .line 922
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertFalse(Z)V

    .line 924
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 925
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 927
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 928
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 931
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v11, 0x2

    invoke-virtual {v8, v3, v2, v11, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v7

    .line 932
    .local v7, lsx_file:I
    if-eqz v7, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 934
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 935
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 937
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v8

    and-int/lit8 v4, v8, 0x1

    .line 938
    .local v4, iRet0:I
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v8

    and-int/lit8 v5, v8, 0x2

    .line 939
    .local v5, iRet1:I
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v8

    and-int/lit16 v6, v8, 0x2000

    .line 941
    .local v6, iRet2:I
    if-eqz v4, :cond_1

    move v8, v9

    :goto_1
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 942
    if-eqz v5, :cond_2

    move v8, v9

    :goto_2
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 943
    if-eqz v6, :cond_3

    :goto_3
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 944
    const-wide/16 v8, 0x138

    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->GetFileSize(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(JJ)V

    .line 945
    return-void

    .end local v4           #iRet0:I
    .end local v5           #iRet1:I
    .end local v6           #iRet2:I
    :cond_0
    move v8, v10

    .line 932
    goto :goto_0

    .restart local v4       #iRet0:I
    .restart local v5       #iRet1:I
    .restart local v6       #iRet2:I
    :cond_1
    move v8, v10

    .line 941
    goto :goto_1

    :cond_2
    move v8, v10

    .line 942
    goto :goto_2

    :cond_3
    move v9, v10

    .line 943
    goto :goto_3
.end method

.method private Write_File_Baseinfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "langcode"
    .parameter "diagversion"
    .parameter "serialno"

    .prologue
    .line 2012
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 2013
    .local v0, baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    const/16 v1, 0x15

    iput-short v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    .line 2014
    const/16 v1, 0x3a8

    iput v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    .line 2015
    const-string/jumbo v1, "Chinese Simplified"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    .line 2016
    iput-object p2, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    .line 2017
    const-string/jumbo v1, "en"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    .line 2018
    iput-object p3, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    .line 2019
    iput-object p4, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    .line 2021
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method Write_Autoinfo(I)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 88
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;-><init>()V

    .line 89
    .local v0, autoinfo:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    const-string/jumbo v1, "\u5965\u8fea"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->model:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "Volkswagen"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->make:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "2006"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->year:Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "China"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->madein:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "chassis"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->chassis:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "engine model"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->enginemodel:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "2.0L"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->displacement:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "12345678901234567"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->vin:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Baseinfo(I)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 65
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 66
    .local v0, baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    const/16 v1, 0x15

    iput-short v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    .line 67
    const/16 v1, 0x3a8

    iput v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    .line 68
    const-string/jumbo v1, "Chinese Simplified"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "cn"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "en"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    .line 71
    const-string/jumbo v1, "Audi V13.00"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "980241111111"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Baseinfo_itemtest(I)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 116
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 117
    .local v0, baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    const/16 v1, 0x15

    iput-short v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    .line 118
    const/16 v1, 0x3a8

    iput v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    .line 119
    const-string/jumbo v1, "Chinese Simplified"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    .line 120
    const-string/jumbo v1, "cn"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "en"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "Audi V13.00"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "980241111111"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Baseinfo_langexttest(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "langcode"
    .parameter "langname"

    .prologue
    .line 102
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 103
    .local v0, baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    const/16 v1, 0x15

    iput-short v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    .line 104
    const/16 v1, -0x3524

    iput v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    .line 105
    iput-object p3, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    .line 106
    iput-object p2, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "en"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "Audi V13.00"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "980241111111"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Ds(III)Z
    .locals 7
    .parameter "grp"
    .parameter "startlineno"
    .parameter "linecount"

    .prologue
    const/16 v5, 0xa

    .line 271
    new-array v3, v5, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 273
    .local v3, itemstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 277
    const/16 v0, 0x9

    .line 278
    .local v0, cols:I
    const/4 v1, 0x0

    .line 279
    .local v1, count:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-le v1, p3, :cond_2

    .line 291
    :goto_1
    add-int/lit8 v4, p3, 0x1

    if-ne v1, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 274
    .end local v0           #cols:I
    .end local v1           #count:I
    :cond_1
    new-instance v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v4, v3, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .restart local v0       #cols:I
    .restart local v1       #count:I
    :cond_2
    const/4 v2, 0x0

    :goto_3
    const/16 v4, 0x12

    if-lt v2, v4, :cond_3

    .line 285
    add-int/lit8 p2, p2, 0x1

    .line 286
    sget-object v4, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v4, p1, v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writeds(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 281
    :cond_3
    div-int/lit8 v4, v2, 0x2

    aget-object v4, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6570\u636e\u6d41 \u6570\u503c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 282
    div-int/lit8 v4, v2, 0x2

    aget-object v4, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ds item"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 280
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 291
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method Write_DsBasics(I)Z
    .locals 12
    .parameter "grp"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 210
    const/16 v0, 0xa

    new-array v2, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 211
    .local v2, namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/16 v0, 0xa

    new-array v3, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 212
    .local v3, unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v0, 0xa

    if-lt v6, v0, :cond_0

    .line 217
    const/16 v0, 0xa

    new-array v4, v0, [I

    .line 219
    .local v4, type:[I
    aget-object v0, v2, v8

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f01"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 220
    aget-object v0, v2, v8

    const-string/jumbo v1, "ds name1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 221
    aget-object v0, v2, v7

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f02"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 222
    aget-object v0, v2, v7

    const-string/jumbo v1, "ds name2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 223
    aget-object v0, v2, v9

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f03"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 224
    aget-object v0, v2, v9

    const-string/jumbo v1, "ds name3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 225
    const/4 v0, 0x3

    aget-object v0, v2, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f04"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 226
    const/4 v0, 0x3

    aget-object v0, v2, v0

    const-string/jumbo v1, "ds name4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 227
    aget-object v0, v2, v10

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f05"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 228
    aget-object v0, v2, v10

    const-string/jumbo v1, "ds name5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 229
    aget-object v0, v2, v11

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f06"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 230
    aget-object v0, v2, v11

    const-string/jumbo v1, "ds name6"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 231
    const/4 v0, 0x6

    aget-object v0, v2, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f07"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 232
    const/4 v0, 0x6

    aget-object v0, v2, v0

    const-string/jumbo v1, "ds name7"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 233
    const/4 v0, 0x7

    aget-object v0, v2, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f08"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 234
    const/4 v0, 0x7

    aget-object v0, v2, v0

    const-string/jumbo v1, "ds name8"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 235
    const/16 v0, 0x8

    aget-object v0, v2, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u540d\u79f09"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 236
    const/16 v0, 0x8

    aget-object v0, v2, v0

    const-string/jumbo v1, "ds name9"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 238
    aget-object v0, v3, v8

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 239
    aget-object v0, v3, v8

    const-string/jumbo v1, "ds unit1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 240
    aget-object v0, v3, v7

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 241
    aget-object v0, v3, v7

    const-string/jumbo v1, "ds unit2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 242
    aget-object v0, v3, v9

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 243
    aget-object v0, v3, v9

    const-string/jumbo v1, "ds unit3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 244
    const/4 v0, 0x3

    aget-object v0, v3, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 245
    const/4 v0, 0x3

    aget-object v0, v3, v0

    const-string/jumbo v1, "ds unit4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 246
    aget-object v0, v3, v10

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 247
    aget-object v0, v3, v10

    const-string/jumbo v1, "ds unit5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 248
    aget-object v0, v3, v11

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d6"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 249
    aget-object v0, v3, v11

    const-string/jumbo v1, "ds unit6"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 250
    const/4 v0, 0x6

    aget-object v0, v3, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d7"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 251
    const/4 v0, 0x6

    aget-object v0, v3, v0

    const-string/jumbo v1, "ds unit7"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 252
    const/4 v0, 0x7

    aget-object v0, v3, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d8"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 253
    const/4 v0, 0x7

    aget-object v0, v3, v0

    const-string/jumbo v1, "ds unit8"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 254
    const/16 v0, 0x8

    aget-object v0, v3, v0

    const-string/jumbo v1, "\u6570\u636e\u6d41 \u5355\u4f4d9"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 255
    const/16 v0, 0x8

    aget-object v0, v3, v0

    const-string/jumbo v1, "ds unit9"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 257
    const/16 v0, 0x100

    aput v0, v4, v8

    .line 258
    const/16 v0, 0x200

    aput v0, v4, v9

    .line 259
    const/16 v0, 0x205

    aput v0, v4, v10

    .line 260
    const/16 v0, 0x300

    aput v0, v4, v11

    .line 261
    const/4 v0, 0x7

    const/16 v1, 0x313

    aput v1, v4, v0

    .line 263
    const/16 v5, 0x9

    .line 264
    .local v5, n:I
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writedsbasics(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    :goto_1
    return v0

    .line 213
    .end local v4           #type:[I
    .end local v5           #n:I
    :cond_0
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v2, v6

    .line 214
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v3, v6

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .restart local v4       #type:[I
    .restart local v5       #n:I
    :cond_1
    move v0, v8

    .line 264
    goto :goto_1
.end method

.method Write_Dtcs(ILjava/lang/String;)Z
    .locals 6
    .parameter "grp"
    .parameter "dtc"

    .prologue
    .line 173
    new-instance v3, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v3}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    .line 174
    .local v3, state:Lcom/cnlaunch/mycar/jni/LSX_STRING;
    new-instance v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    .line 175
    .local v4, desc:Lcom/cnlaunch/mycar/jni/LSX_STRING;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 177
    .local v5, dtctime:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " \u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " \u63cf\u8ff0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writedtc(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/LSX_STRING;Lcom/cnlaunch/mycar/jni/LSX_STRING;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Write_FF(ILjava/lang/String;)Z
    .locals 12
    .parameter "grp"
    .parameter "dtc"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x4

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 298
    const/4 v0, 0x5

    new-array v3, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 299
    .local v3, namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x5

    new-array v4, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 300
    .local v4, unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x5

    new-array v6, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 301
    .local v6, textstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x5

    new-array v5, v0, [I

    .line 304
    .local v5, type:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-lt v8, v0, :cond_0

    .line 310
    aget-object v0, v3, v10

    const-string/jumbo v1, "FF \u540d\u79f01"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 311
    aget-object v0, v3, v10

    const-string/jumbo v1, "ff name1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 312
    aget-object v0, v3, v9

    const-string/jumbo v1, "FF \u540d\u79f02"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 313
    aget-object v0, v3, v9

    const-string/jumbo v1, "ff name2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 314
    aget-object v0, v3, v2

    const-string/jumbo v1, "FF \u540d\u79f03"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 315
    aget-object v0, v3, v2

    const-string/jumbo v1, "ff name3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 316
    aget-object v0, v3, v11

    const-string/jumbo v1, "FF \u540d\u79f04"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 317
    aget-object v0, v3, v11

    const-string/jumbo v1, "ff name4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 318
    aget-object v0, v3, v7

    const-string/jumbo v1, "FF \u540d\u79f05"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 319
    aget-object v0, v3, v7

    const-string/jumbo v1, "ff name5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 321
    aget-object v0, v4, v10

    const-string/jumbo v1, "FF \u5355\u4f4d1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 322
    aget-object v0, v4, v10

    const-string/jumbo v1, "ff unit1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 323
    aget-object v0, v4, v9

    const-string/jumbo v1, "FF \u5355\u4f4d2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 324
    aget-object v0, v4, v9

    const-string/jumbo v1, "ff unit2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 325
    aget-object v0, v4, v2

    const-string/jumbo v1, "FF \u5355\u4f4d3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 326
    aget-object v0, v4, v2

    const-string/jumbo v1, "ff unit3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 327
    aget-object v0, v4, v11

    const-string/jumbo v1, "FF \u5355\u4f4d4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 328
    aget-object v0, v4, v11

    const-string/jumbo v1, "ff unit4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 329
    aget-object v0, v4, v7

    const-string/jumbo v1, "FF \u5355\u4f4d5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 330
    aget-object v0, v4, v7

    const-string/jumbo v1, "ff unit5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 332
    const/16 v0, 0x100

    aput v0, v5, v10

    .line 333
    const/16 v0, 0x200

    aput v0, v5, v2

    .line 334
    const/16 v0, 0x205

    aput v0, v5, v7

    .line 336
    aget-object v0, v6, v10

    const-string/jumbo v1, "FF \u6570\u503c1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 337
    aget-object v0, v6, v10

    const-string/jumbo v1, "ff item1"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 338
    aget-object v0, v6, v9

    const-string/jumbo v1, "FF \u6570\u503c2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 339
    aget-object v0, v6, v9

    const-string/jumbo v1, "ff item2"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 340
    aget-object v0, v6, v2

    const-string/jumbo v1, "FF \u6570\u503c3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 341
    aget-object v0, v6, v2

    const-string/jumbo v1, "ff item3"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 342
    aget-object v0, v6, v11

    const-string/jumbo v1, "FF \u6570\u503c4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 343
    aget-object v0, v6, v11

    const-string/jumbo v1, "ff item4"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 344
    aget-object v0, v6, v7

    const-string/jumbo v1, "FF \u6570\u503c5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 345
    aget-object v0, v6, v7

    const-string/jumbo v1, "ff item5"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v7, 0x5

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writefreezeframe(ILjava/lang/String;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    :goto_1
    return v0

    .line 305
    :cond_0
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v3, v8

    .line 306
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v4, v8

    .line 307
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v6, v8

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1
    move v0, v10

    .line 347
    goto :goto_1
.end method

.method Write_Rdn(I)Z
    .locals 11
    .parameter "grp"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    const/16 v6, 0xa

    new-array v2, v6, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 131
    .local v2, namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/16 v6, 0xa

    new-array v3, v6, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 132
    .local v3, textstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v6, 0xa

    if-lt v0, v6, :cond_0

    .line 137
    const/4 v1, 0x7

    .line 138
    .local v1, n:I
    aget-object v6, v2, v5

    const-string/jumbo v7, "RDN \u540d\u79f01"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 139
    aget-object v6, v2, v5

    const-string/jumbo v7, "rdn name1"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 140
    aget-object v6, v2, v4

    const-string/jumbo v7, "RDN \u540d\u79f02"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 141
    aget-object v6, v2, v4

    const-string/jumbo v7, "rdn name2"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 142
    aget-object v6, v2, v8

    const-string/jumbo v7, "RDN \u540d\u79f03"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 143
    aget-object v6, v2, v8

    const-string/jumbo v7, "rdn name3"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 144
    aget-object v6, v2, v9

    const-string/jumbo v7, "RDN \u540d\u79f04"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 145
    aget-object v6, v2, v9

    const-string/jumbo v7, "rdn name4"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 146
    aget-object v6, v2, v10

    const-string/jumbo v7, "RDN \u540d\u79f05"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 147
    aget-object v6, v2, v10

    const-string/jumbo v7, "rdn name5"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 148
    const/4 v6, 0x5

    aget-object v6, v2, v6

    const-string/jumbo v7, "RDN \u540d\u79f06"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 149
    const/4 v6, 0x5

    aget-object v6, v2, v6

    const-string/jumbo v7, "rdn name6"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 150
    const/4 v6, 0x6

    aget-object v6, v2, v6

    const-string/jumbo v7, "RDN \u540d\u79f07"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 151
    const/4 v6, 0x6

    aget-object v6, v2, v6

    const-string/jumbo v7, "rdn name7"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 153
    aget-object v6, v3, v5

    const-string/jumbo v7, "RDN \u6570\u503c1"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 154
    aget-object v6, v3, v5

    const-string/jumbo v7, "rdn item1"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 155
    aget-object v6, v3, v4

    const-string/jumbo v7, "RDN \u6570\u503c2"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 156
    aget-object v6, v3, v4

    const-string/jumbo v7, "rdn item2"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 157
    aget-object v6, v3, v8

    const-string/jumbo v7, "RDN \u6570\u503c3"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 158
    aget-object v6, v3, v8

    const-string/jumbo v7, "rdn item3"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 159
    aget-object v6, v3, v9

    const-string/jumbo v7, "RDN \u6570\u503c4"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 160
    aget-object v6, v3, v9

    const-string/jumbo v7, "rdn item4"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 161
    aget-object v6, v3, v10

    const-string/jumbo v7, "RDN \u6570\u503c5"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 162
    aget-object v6, v3, v10

    const-string/jumbo v7, "rdn item5"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 163
    const/4 v6, 0x5

    aget-object v6, v3, v6

    const-string/jumbo v7, "RDN \u6570\u503c6"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 164
    const/4 v6, 0x5

    aget-object v6, v3, v6

    const-string/jumbo v7, "rdn item6"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 165
    const/4 v6, 0x6

    aget-object v6, v3, v6

    const-string/jumbo v7, "RDN \u6570\u503c7"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 166
    const/4 v6, 0x6

    aget-object v6, v3, v6

    const-string/jumbo v7, "rdn item7"

    iput-object v7, v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 168
    sget-object v6, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v6, p1, v2, v3, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writereadiness(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    return v4

    .line 133
    .end local v1           #n:I
    :cond_0
    new-instance v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v6}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v6, v2, v0

    .line 134
    new-instance v6, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v6}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v6, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .restart local v1       #n:I
    :cond_1
    move v4, v5

    .line 168
    goto :goto_1
.end method

.method Write_Spinfo(I)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 80
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;-><init>()V

    .line 81
    .local v0, spinfo:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    const-string/jumbo v1, "\u7ecf\u9500\u5546A"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->name:Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "88888888"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->phone:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Userinfo(I)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 55
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;-><init>()V

    .line 56
    .local v0, userinfo:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    const-string/jumbo v1, "customer A"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->name:Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "77777777"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->phone:Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "123456"

    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->license:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_write_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method Write_Vi(I)Z
    .locals 4
    .parameter "grp"

    .prologue
    .line 193
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    .line 195
    .local v0, vi:Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const-string/jumbo v1, "\u7248\u672c\u4fe1\u606f1\n\u7248\u672c\u4fe1\u606f2"

    .line 196
    .local v1, vi_str:Ljava/lang/String;
    const-string/jumbo v2, "vi info1\nvi info2"

    .line 197
    .local v2, vi_str_en:Ljava/lang/String;
    iput-object v1, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 198
    iput-object v2, v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 200
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3, p1, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writevi(ILcom/cnlaunch/mycar/jni/LSX_STRING;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public creatFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "x431fileName"
    .parameter "langcode"
    .parameter "diagversion"
    .parameter "serialno"
    .parameter "hlsx"
    .parameter "mfilePath"

    .prologue
    .line 1976
    const-string/jumbo v5, "//"

    const-string/jumbo v6, "/"

    invoke-virtual {p6, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, dstfile:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1979
    .local v3, fileFloder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1980
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1981
    :cond_0
    const/4 v2, -0x1

    .line 1982
    .local v2, file:I
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1983
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 1984
    .local v4, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v5, 0xa

    invoke-direct {v1, v5}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 1985
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    if-eqz v4, :cond_1

    .line 1987
    sget-object v5, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v6, 0x2

    invoke-virtual {v5, p5, v4, v6, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v2

    .line 1988
    if-eqz v2, :cond_1

    .line 1989
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->Write_File_Baseinfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1993
    .end local v1           #error:Lcom/cnlaunch/mycar/jni/X431Integer;
    .end local v4           #filename:Lcom/cnlaunch/mycar/jni/X431String;
    :cond_1
    return v2
.end method

.method public init()I
    .locals 2

    .prologue
    .line 1959
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v0

    .line 1960
    .local v0, hlsx:I
    return v0
.end method

.method public openFile(Ljava/lang/String;I)I
    .locals 6
    .parameter "x431fileName"
    .parameter "hlsx"

    .prologue
    .line 2165
    const/4 v2, -0x1

    .line 2166
    .local v2, lsx_file:I
    invoke-static {p1}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2167
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1, p1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 2168
    .local v1, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v0, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 2171
    .local v0, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v4, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v1, v5, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v2

    .line 2172
    if-eqz v2, :cond_0

    move v3, v2

    .line 2176
    .end local v0           #error:Lcom/cnlaunch/mycar/jni/X431Integer;
    .end local v1           #filename:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #lsx_file:I
    .local v3, lsx_file:I
    :goto_0
    return v3

    .end local v3           #lsx_file:I
    .restart local v2       #lsx_file:I
    :cond_0
    move v3, v2

    .end local v2           #lsx_file:I
    .restart local v3       #lsx_file:I
    goto :goto_0
.end method

.method public readDsDataFirstItemCount(I)I
    .locals 2
    .parameter "grp"

    .prologue
    .line 2263
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstdsitem(I)I

    move-result v0

    .line 2264
    .local v0, item:I
    return v0
.end method

.method public readDsDataFirstItemData(III)[Ljava/lang/String;
    .locals 3
    .parameter "grp"
    .parameter "cols"
    .parameter "itemCount"

    .prologue
    .line 2275
    new-array v0, p2, [Ljava/lang/String;

    .line 2276
    .local v0, textstrs:[Ljava/lang/String;
    if-lez p3, :cond_0

    .line 2277
    sget-object v2, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v2, p3, v0, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 2282
    .end local v0           #textstrs:[Ljava/lang/String;
    .local v1, textstrs:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2281
    .end local v1           #textstrs:[Ljava/lang/String;
    .restart local v0       #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    .line 2282
    .end local v0           #textstrs:[Ljava/lang/String;
    .restart local v1       #textstrs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public readDsDataNextItemData(III)[Ljava/lang/String;
    .locals 5
    .parameter "grp"
    .parameter "cols"
    .parameter "itemCount"

    .prologue
    .line 2293
    new-array v1, p2, [Ljava/lang/String;

    .line 2294
    .local v1, textstrs:[Ljava/lang/String;
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readrelndsitem(II)I

    move-result v0

    .line 2295
    .local v0, item:I
    if-lez p3, :cond_0

    .line 2296
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3, v0, v1, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 2301
    .end local v1           #textstrs:[Ljava/lang/String;
    .local v2, textstrs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2300
    .end local v2           #textstrs:[Ljava/lang/String;
    .restart local v1       #textstrs:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    move-object v2, v1

    .line 2301
    .end local v1           #textstrs:[Ljava/lang/String;
    .restart local v2       #textstrs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public readDsNames(II)[Ljava/lang/String;
    .locals 4
    .parameter "grp"
    .parameter "cols"

    .prologue
    const/4 v3, 0x0

    .line 2221
    if-eqz p1, :cond_1

    .line 2222
    new-array v0, p2, [Ljava/lang/String;

    .line 2223
    .local v0, namestrs:[Ljava/lang/String;
    sget-object v2, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v2, p1, v0, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsname(I[Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 2231
    .end local v0           #namestrs:[Ljava/lang/String;
    .local v1, namestrs:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2226
    .end local v1           #namestrs:[Ljava/lang/String;
    .restart local v0       #namestrs:[Ljava/lang/String;
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    move-object v1, v0

    .line 2227
    .end local v0           #namestrs:[Ljava/lang/String;
    .restart local v1       #namestrs:[Ljava/lang/String;
    goto :goto_0

    .line 2230
    .end local v1           #namestrs:[Ljava/lang/String;
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .restart local v0       #namestrs:[Ljava/lang/String;
    move-object v1, v0

    .line 2231
    .end local v0           #namestrs:[Ljava/lang/String;
    .restart local v1       #namestrs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public readDsunitstrs(II)[Ljava/lang/String;
    .locals 4
    .parameter "grp"
    .parameter "cols"

    .prologue
    const/4 v3, 0x0

    .line 2242
    if-eqz p1, :cond_1

    .line 2243
    new-array v0, p2, [Ljava/lang/String;

    .line 2244
    .local v0, unitstrs:[Ljava/lang/String;
    sget-object v2, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v2, p1, v0, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsunit(I[Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 2252
    .end local v0           #unitstrs:[Ljava/lang/String;
    .local v1, unitstrs:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2247
    .end local v1           #unitstrs:[Ljava/lang/String;
    .restart local v0       #unitstrs:[Ljava/lang/String;
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    move-object v1, v0

    .line 2248
    .end local v0           #unitstrs:[Ljava/lang/String;
    .restart local v1       #unitstrs:[Ljava/lang/String;
    goto :goto_0

    .line 2251
    .end local v1           #unitstrs:[Ljava/lang/String;
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .restart local v0       #unitstrs:[Ljava/lang/String;
    move-object v1, v0

    .line 2252
    .end local v0           #unitstrs:[Ljava/lang/String;
    .restart local v1       #unitstrs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public readEndCloseFile(II)V
    .locals 1
    .parameter "fileId"
    .parameter "hlsx"

    .prologue
    .line 2314
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 2315
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 2316
    return-void
.end method

.method public readGroupId(I)I
    .locals 3
    .parameter "fileId"

    .prologue
    .line 2187
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v0

    .line 2188
    .local v0, grp:I
    return v0
.end method

.method public readGroupItemColCount(I)I
    .locals 2
    .parameter "grp"

    .prologue
    .line 2209
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdscolcount(I)I

    move-result v0

    .line 2210
    .local v0, cols:I
    return v0
.end method

.method public readGroupItemCount(I)I
    .locals 2
    .parameter "grp"

    .prologue
    .line 2198
    sget-object v1, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsitemcount(I)I

    move-result v0

    .line 2199
    .local v0, itemcount:I
    return v0
.end method

.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 34
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
    .line 39
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 40
    return-void
.end method

.method public testV2FileReadDSDataTest()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v10

    .line 819
    .local v10, hlsx:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 821
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "v2.x431"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 824
    .local v17, strFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    .line 825
    .local v2, bExist:Z
    invoke-static {v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 827
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 829
    .local v7, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 832
    .local v6, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v10, v7, v1, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v15

    .line 833
    .local v15, lsx_file:I
    if-eqz v15, :cond_0

    const/16 v21, 0x1

    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 835
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v9

    .line 836
    .local v9, grpcount:I
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-static {v0, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 838
    const/4 v8, 0x0

    .line 839
    .local v8, grp:I
    const/4 v12, 0x0

    .line 841
    .local v12, item:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 842
    .local v3, buf:Ljava/lang/String;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 843
    .local v16, namestrs:[Ljava/lang/String;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 844
    .local v20, unitstrs:[Ljava/lang/String;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 845
    .local v18, textstrs:[Ljava/lang/String;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [S

    move-object/from16 v19, v0

    .line 847
    .local v19, type:[S
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    if-le v11, v9, :cond_1

    .line 895
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 896
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 897
    return-void

    .line 833
    .end local v3           #buf:Ljava/lang/String;
    .end local v8           #grp:I
    .end local v9           #grpcount:I
    .end local v11           #i:I
    .end local v12           #item:I
    .end local v16           #namestrs:[Ljava/lang/String;
    .end local v18           #textstrs:[Ljava/lang/String;
    .end local v19           #type:[S
    .end local v20           #unitstrs:[Ljava/lang/String;
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 849
    .restart local v3       #buf:Ljava/lang/String;
    .restart local v8       #grp:I
    .restart local v9       #grpcount:I
    .restart local v11       #i:I
    .restart local v12       #item:I
    .restart local v16       #namestrs:[Ljava/lang/String;
    .restart local v18       #textstrs:[Ljava/lang/String;
    .restart local v19       #type:[S
    .restart local v20       #unitstrs:[Ljava/lang/String;
    :cond_1
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v11}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v8

    .line 850
    if-eqz v8, :cond_2

    const/16 v21, 0x1

    :goto_2
    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 852
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsitemcount(I)I

    move-result v13

    .line 854
    .local v13, itemcount:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 855
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 860
    :goto_3
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdscolcount(I)I

    move-result v4

    .line 861
    .local v4, cols:I
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 863
    const/16 v21, 0x0

    sget-object v22, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsname(I[Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 864
    const/16 v21, 0x0

    sget-object v22, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdsunit(I[Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 865
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdstype(I[SI)I

    move-result v21

    if-gez v21, :cond_4

    const/16 v21, 0x1

    :goto_4
    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 867
    const/4 v14, 0x0

    .local v14, k:I
    :goto_5
    if-lt v14, v4, :cond_5

    .line 875
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstdsitem(I)I

    move-result v12

    .line 876
    if-eqz v12, :cond_6

    const/16 v21, 0x1

    :goto_6
    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 878
    const/4 v5, 0x0

    .line 879
    .local v5, count:I
    :goto_7
    if-nez v12, :cond_7

    .line 892
    invoke-static {v5, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 847
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 850
    .end local v4           #cols:I
    .end local v5           #count:I
    .end local v13           #itemcount:I
    .end local v14           #k:I
    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 857
    .restart local v13       #itemcount:I
    :cond_3
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-static {v0, v13}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    goto :goto_3

    .line 865
    .restart local v4       #cols:I
    :cond_4
    const/16 v21, 0x0

    goto :goto_4

    .line 868
    .restart local v14       #k:I
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "name "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 869
    aget-object v21, v16, v14

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "unit "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    aget-object v21, v20, v14

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 876
    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    .line 880
    .restart local v5       #count:I
    :cond_7
    const/16 v21, 0x0

    sget-object v22, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readds(I[Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 882
    add-int/lit8 v5, v5, 0x1

    .line 883
    const/4 v14, 0x0

    :goto_8
    if-lt v14, v4, :cond_8

    .line 889
    sget-object v21, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readrelndsitem(II)I

    move-result v12

    goto :goto_7

    .line 884
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "item "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 886
    aget-object v21, v18, v14

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    add-int/lit8 v14, v14, 0x1

    goto :goto_8
.end method

.method public testV2FileReadDtcDataTest()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 711
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v21

    .line 712
    .local v21, hlsx:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "v2.x431"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 717
    .local v25, strFileName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v15

    .line 718
    .local v15, bExist:Z
    invoke-static {v15}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 720
    new-instance v19, Lcom/cnlaunch/mycar/jni/X431String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 722
    .local v19, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v18, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v3, 0xa

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 725
    .local v18, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v9, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v9, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v24

    .line 726
    .local v24, lsx_file:I
    if-eqz v24, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 729
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v20

    .line 730
    .local v20, grpcount:I
    const/4 v3, 0x2

    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 732
    const/4 v10, 0x0

    .line 733
    .local v10, grp:I
    const/4 v4, 0x0

    .line 734
    .local v4, item:I
    new-instance v5, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v5}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 735
    .local v5, dtc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v6, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v6}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 736
    .local v6, state:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v7, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 737
    .local v7, desc:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v8, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v8}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 739
    .local v8, time:Lcom/cnlaunch/mycar/jni/X431String;
    const/16 v22, 0x1

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 795
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 796
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 797
    return-void

    .line 726
    .end local v4           #item:I
    .end local v5           #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v6           #state:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v7           #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v8           #time:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v10           #grp:I
    .end local v20           #grpcount:I
    .end local v22           #i:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 741
    .restart local v4       #item:I
    .restart local v5       #dtc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v6       #state:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v7       #desc:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v8       #time:Lcom/cnlaunch/mycar/jni/X431String;
    .restart local v10       #grp:I
    .restart local v20       #grpcount:I
    .restart local v22       #i:I
    :cond_1
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupid(II)I

    move-result v10

    .line 742
    if-eqz v10, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 744
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtccount(I)I

    move-result v17

    .line 745
    .local v17, dtccount:I
    const/4 v3, 0x5

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 747
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3, v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readfirstdtcitem(I)I

    move-result v4

    .line 748
    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 750
    const/16 v16, 0x0

    .line 751
    .local v16, count:I
    :goto_4
    if-nez v4, :cond_4

    .line 777
    const/4 v3, 0x5

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 779
    const/4 v3, 0x0

    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v11, "P1201"

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtcinfo(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v9

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 780
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string/jumbo v3, "fault 2"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v3, 0x0

    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v11, "P1200"

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtcinfo(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v9

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 785
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string/jumbo v3, "fault 1"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v3, 0x0

    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v11, "P1301"

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtcinfo(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v9

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 790
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string/jumbo v3, "fault 4"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 742
    .end local v16           #count:I
    .end local v17           #dtccount:I
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 748
    .restart local v17       #dtccount:I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 753
    .restart local v16       #count:I
    :cond_4
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual/range {v3 .. v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readdtc(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v23

    .line 754
    .local v23, iRet:I
    const/4 v3, 0x0

    move/from16 v0, v23

    invoke-static {v3, v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 756
    add-int/lit8 v16, v16, 0x1

    .line 757
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_6

    .line 758
    const-string/jumbo v3, "P1200"

    iget-object v9, v5, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v3, "fault 1"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_5
    :goto_5
    sget-object v3, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readnextdtcitem(I)I

    move-result v4

    goto/16 :goto_4

    .line 762
    :cond_6
    const/4 v3, 0x4

    move/from16 v0, v16

    if-ne v0, v3, :cond_7

    .line 763
    const-string/jumbo v3, "P1300"

    iget-object v9, v5, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string/jumbo v3, "fault 3"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 767
    :cond_7
    const/4 v3, 0x5

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 768
    const-string/jumbo v3, "P1301"

    iget-object v9, v5, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string/jumbo v3, "current"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string/jumbo v3, "fault 4"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v3, "16:05:00"

    iget-object v9, v8, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public testitemtest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemWriteTest()V

    .line 1286
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadInOrderTest()V

    .line 1287
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadReverseOrderTest()V

    .line 1288
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadDtcInOrderTest()V

    .line 1289
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadDtcReverseOrderTest()V

    .line 1290
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadFFInOrderTest()V

    .line 1291
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadFFReverseOrderTest()V

    .line 1292
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadDSInOrderTest()V

    .line 1293
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_GroupItemReadDSReverseOrderTest()V

    .line 1294
    return-void
.end method

.method public testlangexttest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileJaExtWriteTest()V

    .line 1133
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileJaExtReadTest()V

    .line 1134
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileChsExtWriteTest()V

    .line 1135
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileChsExtReadTest()V

    .line 1136
    return-void
.end method

.method public testlsx_checkfile()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "v2.x431"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, strFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 397
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 399
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1, v6}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, filepath:Lcom/cnlaunch/mycar/jni/X431String;
    sget-object v7, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v7, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v2

    .line 404
    .local v2, iRet:I
    and-int/lit8 v3, v2, 0x1

    .line 405
    .local v3, itmp1:I
    and-int/lit16 v4, v2, 0x1000

    .line 406
    .local v4, itmp2:I
    and-int/lit8 v5, v2, 0x2

    .line 408
    .local v5, itmp3:I
    if-eqz v3, :cond_0

    move v7, v8

    :goto_0
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 409
    if-eqz v4, :cond_1

    move v7, v8

    :goto_1
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 410
    if-nez v5, :cond_2

    :goto_2
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 412
    return-void

    :cond_0
    move v7, v9

    .line 408
    goto :goto_0

    :cond_1
    move v7, v9

    .line 409
    goto :goto_1

    :cond_2
    move v8, v9

    .line 410
    goto :goto_2
.end method

.method public testlsx_open_lsx_close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 358
    sget-object v6, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 359
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "v2.x431"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, strFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 365
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 367
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v5}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v6, 0xa

    invoke-direct {v1, v6}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 371
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v6, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const/4 v9, 0x2

    invoke-virtual {v6, v3, v2, v9, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v4

    .line 372
    .local v4, lsx_file:I
    if-nez v4, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 373
    iget v6, v1, Lcom/cnlaunch/mycar/jni/X431Integer;->mValue:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    :goto_1
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 380
    sget-object v6, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v6, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 383
    sget-object v6, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v6, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 384
    return-void

    :cond_0
    move v6, v8

    .line 372
    goto :goto_0

    :cond_1
    move v7, v8

    .line 373
    goto :goto_1
.end method

.method public testlsx_read_autoinfo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 467
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v4

    .line 468
    .local v4, hlsx:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, strFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    .line 474
    .local v1, bExist:Z
    invoke-static {v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 476
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v10, 0xa

    invoke-direct {v2, v10}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 480
    .local v2, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v4, v3, v8, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 481
    .local v6, lsx_file:I
    if-eqz v6, :cond_0

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 483
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;-><init>()V

    .line 486
    .local v0, autoinfo:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6, v0}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I

    move-result v5

    .line 489
    .local v5, iRet:I
    invoke-static {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 490
    const-string/jumbo v8, "12345678901234567"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->vin:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v8, "Volkswagen"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->make:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v8, "Audi"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->model:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v8, "2006"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->year:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v8, "China"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->madein:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v8, "chassis"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->chassis:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v8, "engine model"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->enginemodel:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v8, "2.0L"

    iget-object v9, v0, Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;->displacement:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 500
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 501
    return-void

    .end local v0           #autoinfo:Lcom/cnlaunch/mycar/jni/LSX_AUTOINFO;
    .end local v5           #iRet:I
    :cond_0
    move v8, v9

    .line 481
    goto :goto_0
.end method

.method public testlsx_read_baseinfo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 422
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v4

    .line 423
    .local v4, hlsx:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, strFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 429
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 431
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v3, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 433
    .local v3, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v8, 0xa

    invoke-direct {v2, v8}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 436
    .local v2, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v4, v3, v9, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 437
    .local v6, lsx_file:I
    if-eqz v6, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 439
    new-instance v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;-><init>()V

    .line 442
    .local v1, baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I

    move-result v5

    .line 445
    .local v5, iRet:I
    invoke-static {v10, v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 446
    const-string/jumbo v8, "980241111111"

    iget-object v11, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->serialno:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-short v8, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->productid:S

    invoke-static {v9, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 448
    const/16 v8, 0x4e4

    iget v11, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->codepage:I

    invoke-static {v8, v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 449
    iget-object v8, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langname:Ljava/lang/String;

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 450
    const-string/jumbo v8, "en"

    iget-object v11, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v8, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->langcode_en:Ljava/lang/String;

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 452
    const-string/jumbo v8, "Audi V13.00"

    iget-object v11, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->diagversion:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v8, v1, Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;->creationtime:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v11, 0x18

    if-lt v8, v11, :cond_1

    :goto_1
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 455
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 456
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 457
    return-void

    .end local v1           #baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .end local v5           #iRet:I
    :cond_0
    move v8, v10

    .line 437
    goto :goto_0

    .restart local v1       #baseinfo:Lcom/cnlaunch/mycar/jni/LSX_BASEINFO;
    .restart local v5       #iRet:I
    :cond_1
    move v9, v10

    .line 453
    goto :goto_1
.end method

.method public testlsx_read_fileversion()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 625
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 626
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 628
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 631
    .local v7, strFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 632
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 634
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 636
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 639
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3, v2, v9, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v6

    .line 640
    .local v6, lsx_file:I
    if-eqz v6, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 643
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_fileversion(I)S

    move-result v4

    .line 646
    .local v4, iRet:S
    and-int/lit16 v5, v4, 0x200

    .line 647
    .local v5, iTmp:I
    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 649
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 650
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 651
    return-void

    .end local v4           #iRet:S
    .end local v5           #iTmp:I
    :cond_0
    move v8, v10

    .line 640
    goto :goto_0

    .restart local v4       #iRet:S
    .restart local v5       #iTmp:I
    :cond_1
    move v9, v10

    .line 647
    goto :goto_1
.end method

.method public testlsx_read_langcode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 661
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v5

    .line 662
    .local v5, hlsx:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 664
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, strFileName:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 668
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 670
    new-instance v4, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v4, v8}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 672
    .local v4, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v3, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v9, 0xa

    invoke-direct {v3, v9}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 675
    .local v3, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5, v4, v10, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v7

    .line 676
    .local v7, lsx_file:I
    if-eqz v7, :cond_0

    move v9, v10

    :goto_0
    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 678
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v1}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 679
    .local v1, code:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2}, Lcom/cnlaunch/mycar/jni/X431String;-><init>()V

    .line 682
    .local v2, code_en:Lcom/cnlaunch/mycar/jni/X431String;
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I

    move-result v6

    .line 685
    .local v6, iRet:I
    invoke-static {v10, v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 686
    const-string/jumbo v9, "en"

    iget-object v10, v1, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v9, v2, Lcom/cnlaunch/mycar/jni/X431String;->mValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNull(Ljava/lang/Object;)V

    .line 689
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 690
    sget-object v9, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v9, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 691
    return-void

    .line 676
    .end local v1           #code:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v2           #code_en:Lcom/cnlaunch/mycar/jni/X431String;
    .end local v6           #iRet:I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public testlsx_read_spinfo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 511
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 512
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, strFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 518
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 520
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v7}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 522
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v10, 0xa

    invoke-direct {v1, v10}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 525
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v3, v2, v8, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 526
    .local v5, lsx_file:I
    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 528
    new-instance v6, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;

    invoke-direct {v6}, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;-><init>()V

    .line 531
    .local v6, spinfo:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v5, v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I

    move-result v4

    .line 534
    .local v4, iRet:I
    invoke-static {v9, v4}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 535
    const-string/jumbo v8, "\u7ecf\u9500\u5546A"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string/jumbo v8, "88888888"

    iget-object v9, v6, Lcom/cnlaunch/mycar/jni/LSX_SPINFO;->phone:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 539
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 540
    return-void

    .end local v4           #iRet:I
    .end local v6           #spinfo:Lcom/cnlaunch/mycar/jni/LSX_SPINFO;
    :cond_0
    move v8, v9

    .line 526
    goto :goto_0
.end method

.method public testlsx_read_userinfo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 550
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 551
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 553
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "v2.x431"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, strFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 557
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 559
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v6}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 561
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v10, 0xa

    invoke-direct {v1, v10}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 564
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v10, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v10, v3, v2, v8, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 565
    .local v5, lsx_file:I
    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 567
    new-instance v7, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;

    invoke-direct {v7}, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;-><init>()V

    .line 570
    .local v7, userinfo:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v5, v7}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_read_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I

    move-result v4

    .line 573
    .local v4, iRet:I
    invoke-static {v9, v4}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 574
    const-string/jumbo v8, "customer B"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v8, "999999999"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->phone:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string/jumbo v8, "654321"

    iget-object v9, v7, Lcom/cnlaunch/mycar/jni/LSX_USERINFO;->license:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 579
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 580
    return-void

    .end local v4           #iRet:I
    .end local v7           #userinfo:Lcom/cnlaunch/mycar/jni/LSX_USERINFO;
    :cond_0
    move v8, v9

    .line 565
    goto :goto_0
.end method

.method public testlsx_rec_readgroupcount()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 590
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_init()I

    move-result v3

    .line 591
    .local v3, hlsx:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertNotNull(Ljava/lang/Object;)V

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/mycar/jni/FileUtils;->sdCardGetDirectoryPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "v2.x431"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, strFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/mycar/jni/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 597
    .local v0, bExist:Z
    invoke-static {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 599
    new-instance v2, Lcom/cnlaunch/mycar/jni/X431String;

    invoke-direct {v2, v6}, Lcom/cnlaunch/mycar/jni/X431String;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, filename:Lcom/cnlaunch/mycar/jni/X431String;
    new-instance v1, Lcom/cnlaunch/mycar/jni/X431Integer;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Lcom/cnlaunch/mycar/jni/X431Integer;-><init>(I)V

    .line 604
    .local v1, error:Lcom/cnlaunch/mycar/jni/X431Integer;
    sget-object v8, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v8, v3, v2, v7, v1}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I

    move-result v5

    .line 605
    .local v5, lsx_file:I
    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertTrue(Z)V

    .line 608
    sget-object v7, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v7, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_readgroupcount(I)I

    move-result v4

    .line 611
    .local v4, iRet:I
    const/4 v7, 0x2

    invoke-static {v7, v4}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->assertEquals(II)V

    .line 613
    sget-object v7, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v7, v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 614
    sget-object v7, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v7, v3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 615
    return-void

    .line 605
    .end local v4           #iRet:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public testsimpletest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileNoDataWriteTest()V

    .line 913
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileNoDataReadTest()V

    .line 914
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileBasicDataWriteTest()V

    .line 915
    invoke-direct {p0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->TEST_NewFileBasicDataReadTest()V

    .line 916
    return-void
.end method

.method public writeDSDate(ILjava/util/ArrayList;)V
    .locals 6
    .parameter "grp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2077
    .local p2, dataStreamBean:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2078
    .local v2, leng:I
    new-array v1, v2, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2080
    .local v1, itemstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 2084
    sget-object v4, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v4, p1, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writeds(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I

    move-result v3

    .line 2085
    .local v3, succeed:I
    const/4 v1, 0x0

    .line 2086
    return-void

    .line 2081
    .end local v3           #succeed:I
    :cond_0
    new-instance v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v4, v1, v0

    .line 2082
    aget-object v5, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2080
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeDsBasics(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "grp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, dataStreamBean:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v7, 0x0

    .line 2048
    if-eqz p1, :cond_1

    .line 2049
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2050
    .local v5, leng:I
    add-int/lit8 v0, v5, 0x1

    new-array v2, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2051
    .local v2, namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    add-int/lit8 v0, v5, 0x1

    new-array v3, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2052
    .local v3, unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v5, :cond_2

    .line 2060
    add-int/lit8 v0, v5, 0x1

    new-array v4, v0, [I

    .line 2061
    .local v4, type:[I
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writedsbasics(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 2062
    .local v7, success:Z
    :cond_0
    const/4 v2, 0x0

    .line 2063
    const/4 v3, 0x0

    .line 2066
    .end local v2           #namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .end local v3           #unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .end local v4           #type:[I
    .end local v5           #leng:I
    .end local v6           #i:I
    .end local v7           #success:Z
    :cond_1
    return v7

    .line 2053
    .restart local v2       #namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .restart local v3       #unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .restart local v5       #leng:I
    .restart local v6       #i:I
    :cond_2
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v2, v6

    .line 2054
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v3, v6

    .line 2055
    aget-object v1, v2, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2056
    aget-object v1, v2, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 2057
    aget-object v1, v3, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2058
    aget-object v1, v3, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 2052
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public writeEndCloseFile(ILjava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "grpId"
    .parameter "endtime"
    .parameter "fileId"
    .parameter "hlsx"
    .parameter "x431fileName"

    .prologue
    .line 2148
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_finishnewgroup(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_close(I)I

    .line 2150
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v0, p4}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_deinit(I)I

    .line 2152
    :cond_0
    return-void
.end method

.method public writeNewGroup(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "file"
    .parameter "carTypeName"
    .parameter "starttime"

    .prologue
    .line 2036
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    const-string/jumbo v3, "Canbus"

    const-string/jumbo v4, "12345678976543210"

    const/4 v6, 0x2

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writenewgroup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2037
    .local v7, grp:I
    return v7
.end method

.method public writeVWDSDate(ILjava/util/ArrayList;)V
    .locals 6
    .parameter "grp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2127
    .local p2, dataStreamBean:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2128
    .local v2, leng:I
    new-array v1, v2, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2130
    .local v1, itemstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 2134
    sget-object v4, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    invoke-virtual {v4, p1, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writeds(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I

    move-result v3

    .line 2135
    .local v3, succeed:I
    const/4 v1, 0x0

    .line 2136
    return-void

    .line 2131
    .end local v3           #succeed:I
    :cond_0
    new-instance v4, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v4}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v4, v1, v0

    .line 2132
    aget-object v5, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeVWDsBasics(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "grp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, dataStreamBean:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v7, 0x0

    .line 2096
    if-eqz p1, :cond_1

    .line 2097
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2098
    .local v5, leng:I
    add-int/lit8 v0, v5, 0x1

    new-array v2, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2100
    .local v2, namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    add-int/lit8 v0, v5, 0x1

    new-array v3, v0, [Lcom/cnlaunch/mycar/jni/LSX_STRING;

    .line 2101
    .local v3, unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v5, :cond_2

    .line 2109
    add-int/lit8 v0, v5, 0x1

    new-array v4, v0, [I

    .line 2110
    .local v4, type:[I
    sget-object v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->mJxf:Lcom/cnlaunch/mycar/jni/JniX431File;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431File;->lsx_rec_writedsbasics(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 2111
    .local v7, success:Z
    :cond_0
    const/4 v2, 0x0

    .line 2112
    const/4 v3, 0x0

    .line 2113
    const/4 v4, 0x0

    .line 2116
    .end local v2           #namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .end local v3           #unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .end local v4           #type:[I
    .end local v5           #leng:I
    .end local v6           #i:I
    .end local v7           #success:Z
    :cond_1
    return v7

    .line 2102
    .restart local v2       #namestrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .restart local v3       #unitstrs:[Lcom/cnlaunch/mycar/jni/LSX_STRING;
    .restart local v5       #leng:I
    .restart local v6       #i:I
    :cond_2
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v2, v6

    .line 2103
    new-instance v0, Lcom/cnlaunch/mycar/jni/LSX_STRING;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/LSX_STRING;-><init>()V

    aput-object v0, v3, v6

    .line 2104
    aget-object v1, v2, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2105
    aget-object v1, v2, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 2106
    aget-object v1, v3, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str:Ljava/lang/String;

    .line 2107
    aget-object v1, v3, v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/mycar/jni/LSX_STRING;->str_en:Ljava/lang/String;

    .line 2101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
