.class public Lcom/inca/security/Common/SecurityEventType$Error;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Error"
.end annotation


# static fields
.field public static final ERROR_CONNECT_TO_AUTH_SERVER:I = 0x1f41

.field public static final ERROR_CONNECT_TO_GATEWAY_SERVER:I = 0x4

.field public static final ERROR_CONNECT_TO_UPDATE_SERVER:I = 0x1

.field public static final ERROR_DOWNLOAD_MODULE_FILE:I = 0x3

.field public static final ERROR_DOWNLOAD_UPDATE_FILE:I = 0x2

.field public static final ERROR_ENGINE_INIT:I = 0x8

.field public static final ERROR_INVALID_AUTH_PACKET:I = 0x1f42

.field public static final ERROR_KEY_IS_NULL:I = 0x5

.field public static final ERROR_LIBENGINE_FATAL:I = 0x270f

.field public static final ERROR_MANDATORY_FILE_DOES_NOT_EXIST:I = 0x9

.field public static final ERROR_NETWORK_ACTIVATION:I = 0x6

.field public static final ERROR_NOTHING:I = 0x0

.field public static final ERROR_NOT_ENOUGH_FREE_SPACE:I = 0xa

.field public static final ERROR_OPEN_REMOTE_UPDATE_FILE:I = 0x7

.field public static final ERROR_UNHANDLED_EXCEPTION:I = 0x2706


# instance fields
.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventType;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventType;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventType$Error;->this$0:Lcom/inca/security/Common/SecurityEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
