.class public Lcom/cnlaunch/framework/utils/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# static fields
.field public static AUTH_FAILED:I

.field public static CONFIG_ITEM_INVALID:I

.field public static CONFIG_TYPE_INVALID:I

.field public static CONST_UNDEFINED:I

.field public static DB_CONNECT_FAILED:I

.field public static DB_FAILED:I

.field public static DEFINED_INVALID:I

.field public static FILE_FAILED:I

.field public static FILE_NOTFOUND:I

.field public static IMAGE_SAVE_FAILED:I

.field public static IMAGE_TYPE_INVALID:I

.field public static INDEX_UNDEFINED:I

.field public static INPUT_PARAM_INVALID:I

.field public static INPUT_PARAM_MISSED:I

.field public static INPUT_PARAM_NONUNIQUE:I

.field public static INPUT_VERIFY_CODE_MISSED:I

.field public static ITEM_NOT_FOUND:I

.field public static MKDIR_FAILED:I

.field public static NETWORK_FAILED:I

.field public static PACK_FAILED:I

.field public static PARAM_INVALID:I

.field public static PARAM_MISSED:I

.field public static SERIALIZE_FAILED:I

.field public static SESSION_ID_INVALID:I

.field public static SESSION_INVALID:I

.field public static SESSION_TIMEOUT:I

.field public static SIGN_FAILED:I

.field public static TOKEN_VERIFY_FAILED:I

.field public static UNKNOW:I

.field public static UNPACK_FAILED:I

.field public static UNSERIALIZE_FAILED:I

.field public static VAR_UNDEFINED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x3e8

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->UNKNOW:I

    .line 22
    const/16 v0, 0x3e9

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->VAR_UNDEFINED:I

    .line 24
    const/16 v0, 0x3ea

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->INDEX_UNDEFINED:I

    .line 26
    const/16 v0, 0x3eb

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->CONST_UNDEFINED:I

    .line 28
    const/16 v0, 0x3f7

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->PARAM_INVALID:I

    .line 30
    const/16 v0, 0x3f8

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->PARAM_MISSED:I

    .line 32
    const/16 v0, 0x3f9

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->DEFINED_INVALID:I

    .line 35
    const/16 v0, 0x3fe

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->INPUT_PARAM_INVALID:I

    .line 37
    const/16 v0, 0x3ff

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->INPUT_PARAM_MISSED:I

    .line 39
    const/16 v0, 0x400

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->INPUT_PARAM_NONUNIQUE:I

    .line 41
    const/16 v0, 0x401

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->INPUT_VERIFY_CODE_MISSED:I

    .line 44
    const/16 v0, 0x4b1

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->AUTH_FAILED:I

    .line 46
    const/16 v0, 0x4bb

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->SESSION_INVALID:I

    .line 48
    const/16 v0, 0x4bc

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->SESSION_TIMEOUT:I

    .line 50
    const/16 v0, 0x4bd

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->SESSION_ID_INVALID:I

    .line 52
    const/16 v0, 0x4be

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->SIGN_FAILED:I

    .line 55
    const/16 v0, 0x515

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->FILE_NOTFOUND:I

    .line 58
    const/16 v0, 0x579

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->DB_FAILED:I

    .line 60
    const/16 v0, 0x57a

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->DB_CONNECT_FAILED:I

    .line 63
    const/16 v0, 0x5dc

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->FILE_FAILED:I

    .line 65
    const/16 v0, 0x5e6

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->MKDIR_FAILED:I

    .line 68
    const/16 v0, 0x640

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->NETWORK_FAILED:I

    .line 72
    const/16 v0, 0x6a5

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->CONFIG_TYPE_INVALID:I

    .line 74
    const/16 v0, 0x6a6

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->CONFIG_ITEM_INVALID:I

    .line 76
    const/16 v0, 0x6c3

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->SERIALIZE_FAILED:I

    .line 78
    const/16 v0, 0x6c4

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->UNSERIALIZE_FAILED:I

    .line 80
    const/16 v0, 0x6c5

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->PACK_FAILED:I

    .line 82
    const/16 v0, 0x6c6

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->UNPACK_FAILED:I

    .line 84
    const/16 v0, 0x6cd

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->ITEM_NOT_FOUND:I

    .line 87
    const/16 v0, 0x6d7

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->IMAGE_TYPE_INVALID:I

    .line 89
    const/16 v0, 0x6d8

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->IMAGE_SAVE_FAILED:I

    .line 91
    const/16 v0, 0x6e1

    sput v0, Lcom/cnlaunch/framework/utils/ErrorCode;->TOKEN_VERIFY_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
