.class public Lcom/inca/security/Common/SecurityEventType$Detect;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Detect"
.end annotation


# static fields
.field public static final DETECT_API_HOOKING:I = 0x1d

.field public static final DETECT_CRITICAL_THREAD_NOT_RUNNING:I = 0x13

.field public static final DETECT_CUSTOMROM:I = 0x25

.field public static final DETECT_DEBUGGING:I = 0xb

.field public static final DETECT_EMULATOR:I = 0x20

.field public static final DETECT_INSTALLABLE_NON_MARKET_APPS:I = 0x28

.field public static final DETECT_INSTALLED_BAD_APPLICATION:I = 0x21

.field public static final DETECT_INVALID_APK_FILE:I = 0x2

.field public static final DETECT_INVALID_APK_SIGN:I = 0x3

.field public static final DETECT_INVALID_APP_LIBRARY:I = 0x9

.field public static final DETECT_INVALID_CORE_SYSTEM_LIBRARY:I = 0x6

.field public static final DETECT_INVALID_FD0_PERMISSION:I = 0x24

.field public static final DETECT_INVALID_FRAMEWORK_FILES:I = 0xd

.field public static final DETECT_INVALID_FRAMEWORK_IN_MEMORY:I = 0xf

.field public static final DETECT_INVALID_LIBC_SO:I = 0x6

.field public static final DETECT_INVALID_LIBDVM_SO:I = 0x7

.field public static final DETECT_INVALID_LIBRUNTIME_SO:I = 0x8

.field public static final DETECT_INVALID_LICENSE_USES:I = 0xe

.field public static final DETECT_INVALID_LOCAL_HASH:I = 0x27

.field public static final DETECT_INVALID_ODEX_FILE:I = 0x4

.field public static final DETECT_INVALID_ODEX_IN_MEMORY:I = 0x5

.field public static final DETECT_INVALID_SECURITY_ENGINE:I = 0xa

.field public static final DETECT_INVALID_SMITH:I = 0x10

.field public static final DETECT_INVALID_SYSTEMAPP_FILES:I = 0x14

.field public static final DETECT_INVALID_UNITY_ASSEMBLY:I = 0x11

.field public static final DETECT_MACRO_SUSPICIOUS:I = 0x1c

.field public static final DETECT_MEMORY_DUMPING:I = 0x17

.field public static final DETECT_MEMORY_SCANNING:I = 0x12

.field public static final DETECT_MEMORY_TAMPERING:I = 0xc

.field public static final DETECT_NATIVE_DEBUGGING:I = 0x16

.field public static final DETECT_NOTHING:I = 0x0

.field public static final DETECT_RESERVED0:I = 0x1b

.field public static final DETECT_ROOTING_ENVIRONMENT:I = 0x22

.field public static final DETECT_RUNNING_BAD_APPLICATION:I = 0x15

.field public static final DETECT_RUNNING_BAD_PROCESS:I = 0x19

.field public static final DETECT_SO_LIBRARY_INJECTION:I = 0x18

.field public static final DETECT_SPEEDHACK:I = 0x23

.field public static final DETECT_USBDEBUGGING_FLAG:I = 0x26

.field public static final DETECT_WEIRD_KERNEL_MODULE:I = 0x1a

.field public static final DETECT_WEIRD_ROOT_PROCESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventType;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventType;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventType$Detect;->this$0:Lcom/inca/security/Common/SecurityEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
