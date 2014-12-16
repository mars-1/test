.class public Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinyinComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 929
    move-object v1, p1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .local v1, soft1:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    move-object v2, p2

    .line 930
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 931
    .local v2, soft2:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, str1:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 933
    .local v4, str2:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 934
    .local v0, flag:I
    return v0
.end method

.method public getPingYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "inputString"

    .prologue
    const/4 v10, 0x0

    .line 944
    new-instance v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 945
    .local v1, format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v1, v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 946
    sget-object v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v1, v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 947
    sget-object v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v1, v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 950
    .local v3, input:[C
    const-string/jumbo v4, ""

    .line 953
    .local v4, output:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v6, :cond_0

    .line 976
    :goto_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$PinyinComparator;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->tag:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getPingYin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    return-object v4

    .line 955
    :cond_0
    :try_start_1
    aget-char v6, v3, v2

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 956
    const-string/jumbo v7, "[\\u4E00-\\u9FA5]+"

    .line 955
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    .line 956
    if-eqz v6, :cond_1

    .line 959
    aget-char v6, v3, v2

    .line 958
    invoke-static {v6, v1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v5

    .line 961
    .local v5, temp:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 953
    .end local v5           #temp:[Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_1
    aget-char v6, v3, v2

    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    aget-char v6, v3, v2

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_2

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v7, v3, v2

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    goto :goto_2

    .line 968
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v7, v3, v2

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
