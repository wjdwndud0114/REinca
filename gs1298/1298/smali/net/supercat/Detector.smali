.class public final Lnet/supercat/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/supercat/Detector$OnEmulatorDetectorListener;
    }
.end annotation


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final DEVICE_IDS:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final IMSI_IDS:[Ljava/lang/String;

.field private static final IP:Ljava/lang/String; = "10.0.2.15"

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PHONE_NUMBERS:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Lnet/supercat/Property;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field private static final X86_FILES:[Ljava/lang/String;

.field private static mEmulatorDetector:Lnet/supercat/Detector;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private isCheckPackage:Z

.field private isDebug:Z

.field private isTelephony:Z

.field private final mContext:Landroid/content/Context;

.field private mListPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "15555215554"

    aput-object v1, v0, v3

    const-string v1, "15555215556"

    aput-object v1, v0, v4

    const-string v1, "15555215558"

    aput-object v1, v0, v5

    const-string v1, "15555215560"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "15555215562"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15555215564"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "15555215566"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15555215568"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "15555215570"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "15555215572"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "15555215574"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "15555215576"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "15555215578"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "15555215580"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15555215582"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15555215584"

    aput-object v2, v0, v1

    sput-object v0, Lnet/supercat/Detector;->PHONE_NUMBERS:[Ljava/lang/String;

    .line 52
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "000000000000000"

    aput-object v1, v0, v3

    const-string v1, "e21833235b6eef10"

    aput-object v1, v0, v4

    const-string v1, "012345678912345"

    aput-object v1, v0, v5

    sput-object v0, Lnet/supercat/Detector;->DEVICE_IDS:[Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "310260000000000"

    aput-object v1, v0, v3

    sput-object v0, Lnet/supercat/Detector;->IMSI_IDS:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/dev/socket/genyd"

    aput-object v1, v0, v3

    const-string v1, "/dev/socket/baseband_genyd"

    aput-object v1, v0, v4

    sput-object v0, Lnet/supercat/Detector;->GENY_FILES:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "goldfish"

    aput-object v1, v0, v3

    sput-object v0, Lnet/supercat/Detector;->QEMU_DRIVERS:[Ljava/lang/String;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    sput-object v0, Lnet/supercat/Detector;->PIPES:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ueventd.android_x86.rc"

    aput-object v1, v0, v3

    const-string v1, "x86.prop"

    aput-object v1, v0, v4

    const-string v1, "ueventd.ttVM_x86.rc"

    aput-object v1, v0, v5

    const-string v1, "init.ttVM_x86.rc"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fstab.ttVM_x86"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fstab.vbox86"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "init.vbox86.rc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ueventd.vbox86.rc"

    aput-object v2, v0, v1

    sput-object v0, Lnet/supercat/Detector;->X86_FILES:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fstab.andy"

    aput-object v1, v0, v3

    const-string v1, "ueventd.andy.rc"

    aput-object v1, v0, v4

    sput-object v0, Lnet/supercat/Detector;->ANDY_FILES:[Ljava/lang/String;

    .line 90
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "fstab.nox"

    aput-object v1, v0, v3

    const-string v1, "init.nox.rc"

    aput-object v1, v0, v4

    const-string v1, "ueventd.nox.rc"

    aput-object v1, v0, v5

    sput-object v0, Lnet/supercat/Detector;->NOX_FILES:[Ljava/lang/String;

    .line 96
    const/16 v0, 0xf

    new-array v0, v0, [Lnet/supercat/Property;

    new-instance v1, Lnet/supercat/Property;

    const-string v2, "init.svc.qemud"

    invoke-direct {v1, v2, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lnet/supercat/Property;

    const-string v2, "init.svc.qemu-props"

    invoke-direct {v1, v2, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lnet/supercat/Property;

    const-string v2, "qemu.hw.mainkeys"

    invoke-direct {v1, v2, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lnet/supercat/Property;

    const-string v2, "qemu.sf.fake_camera"

    invoke-direct {v1, v2, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v2, v3, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.bootloader"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.bootmode"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.hardware"

    const-string v4, "goldfish"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.kernel.android.qemud"

    invoke-direct {v2, v3, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.kernel.qemu.gles"

    invoke-direct {v2, v3, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.kernel.qemu"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.product.device"

    const-string v4, "generic"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.product.model"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.product.name"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lnet/supercat/Property;

    const-string v3, "ro.serialno"

    invoke-direct {v2, v3, v6}, Lnet/supercat/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lnet/supercat/Detector;->PROPERTIES:[Lnet/supercat/Property;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v0, p0, Lnet/supercat/Detector;->isDebug:Z

    .line 120
    iput-boolean v0, p0, Lnet/supercat/Detector;->isTelephony:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/supercat/Detector;->isCheckPackage:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    .line 137
    iput-object p1, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    const-string v1, "com.google.android.launcher.layouts.genymotion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    const-string v1, "com.bluestacks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    const-string v1, "com.bignox.app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lnet/supercat/Detector;)Z
    .locals 1
    .param p0, "x0"    # Lnet/supercat/Detector;

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/supercat/Detector;->detect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnet/supercat/Detector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/supercat/Detector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkAdvanced()Z
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Lnet/supercat/Detector;->checkTelephony()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/supercat/Detector;->GENY_FILES:[Ljava/lang/String;

    const-string v2, "Geny"

    .line 251
    invoke-direct {p0, v1, v2}, Lnet/supercat/Detector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/supercat/Detector;->ANDY_FILES:[Ljava/lang/String;

    const-string v2, "Andy"

    .line 252
    invoke-direct {p0, v1, v2}, Lnet/supercat/Detector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/supercat/Detector;->NOX_FILES:[Ljava/lang/String;

    const-string v2, "Nox"

    .line 253
    invoke-direct {p0, v1, v2}, Lnet/supercat/Detector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-direct {p0}, Lnet/supercat/Detector;->checkQEmuDrivers()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/supercat/Detector;->PIPES:[Ljava/lang/String;

    const-string v2, "Pipes"

    .line 255
    invoke-direct {p0, v1, v2}, Lnet/supercat/Detector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-direct {p0}, Lnet/supercat/Detector;->checkIp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0}, Lnet/supercat/Detector;->checkQEmuProps()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/supercat/Detector;->X86_FILES:[Ljava/lang/String;

    const-string v2, "X86"

    invoke-direct {p0, v1, v2}, Lnet/supercat/Detector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 258
    .local v0, "result":Z
    :goto_0
    return v0

    .line 257
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBasic()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "google_sdk"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 226
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "droid4x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Emulator"

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Android SDK built for x86"

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Genymotion"

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v4, "goldfish"

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v4, "vbox86"

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk"

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "google_sdk"

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk_x86"

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "vbox86p"

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 236
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 239
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 242
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 246
    :cond_1
    :goto_1
    return v1

    .end local v0    # "result":Z
    :cond_2
    move v0, v2

    .line 240
    goto :goto_0

    .line 243
    .restart local v0    # "result":Z
    :cond_3
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    :cond_4
    or-int/2addr v0, v2

    .line 244
    if-nez v0, :cond_1

    .line 245
    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move v1, v0

    .line 246
    goto :goto_1
.end method

.method private checkDeviceId()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v4, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    .line 309
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 311
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "deviceId":Ljava/lang/String;
    sget-object v5, Lnet/supercat/Detector;->DEVICE_IDS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 314
    .local v1, "known_deviceId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    const-string v3, "Check device id is detected"

    invoke-direct {p0, v3}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 316
    const/4 v3, 0x1

    .line 320
    .end local v1    # "known_deviceId":Ljava/lang/String;
    :cond_0
    return v3

    .line 313
    .restart local v1    # "known_deviceId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkFiles([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "targets"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 373
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 374
    .local v0, "pipe":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "qemu_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is detected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x1

    .line 380
    .end local v0    # "pipe":Ljava/lang/String;
    .end local v1    # "qemu_file":Ljava/io/File;
    :cond_0
    return v2

    .line 373
    .restart local v0    # "pipe":Ljava/lang/String;
    .restart local v1    # "qemu_file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkImsi()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 324
    iget-object v4, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    .line 325
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 326
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "imsi":Ljava/lang/String;
    sget-object v5, Lnet/supercat/Detector;->IMSI_IDS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 329
    .local v1, "known_imsi":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    const-string v3, "Check imsi is detected"

    invoke-direct {p0, v3}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 331
    const/4 v3, 0x1

    .line 334
    .end local v1    # "known_imsi":Ljava/lang/String;
    :cond_0
    return v3

    .line 328
    .restart local v1    # "known_imsi":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkIp()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, "ipDetected":Z
    iget-object v11, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.INTERNET"

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 409
    new-array v0, v13, [Ljava/lang/String;

    const-string v11, "/system/bin/netcfg"

    aput-object v11, v0, v10

    .line 410
    .local v0, "args":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 413
    .local v2, "builder":Ljava/lang/ProcessBuilder;
    new-instance v11, Ljava/io/File;

    const-string v12, "/system/bin/"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 414
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 415
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 416
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 417
    .local v3, "in":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v8, v11, [B

    .line 418
    .local v8, "re":[B
    :goto_0
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 419
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "re":[B
    :catch_0
    move-exception v11

    .line 427
    :goto_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "netData":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "netcfg data -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 430
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 431
    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "array":[Ljava/lang/String;
    array-length v11, v1

    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v5, v1, v10

    .line 435
    .local v5, "lan":Ljava/lang/String;
    const-string v12, "wlan0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "tunl0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "eth0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_0
    const-string v12, "10.0.2.15"

    .line 436
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 437
    const/4 v4, 0x1

    .line 438
    const-string v10, "Check IP is detected"

    invoke-direct {p0, v10}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 445
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "lan":Ljava/lang/String;
    .end local v6    # "netData":Ljava/lang/String;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return v4

    .line 421
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "re":[B
    .restart local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 434
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "re":[B
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v5    # "lan":Ljava/lang/String;
    .restart local v6    # "netData":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method private checkOperatorNameAndroid()Z
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "operatorName":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "Check operator name android is detected"

    invoke-direct {p0, v1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPackageName()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-boolean v5, p0, Lnet/supercat/Detector;->isCheckPackage:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 265
    :cond_1
    iget-object v5, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 266
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 268
    .local v3, "tryIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 269
    const/high16 v6, 0x10000

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPhoneNumber()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    iget-object v5, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    .line 291
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 293
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "phoneNumber":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_0
    sget-object v6, Lnet/supercat/Detector;->PHONE_NUMBERS:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v0, v6, v5

    .line 298
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 299
    const-string v4, " check phone number is detected"

    invoke-direct {p0, v4}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 304
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 297
    .restart local v0    # "number":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private checkQEmuDrivers()Z
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 348
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/io/File;

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/tty/drivers"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v10, v7

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/cpuinfo"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v10, v6

    array-length v11, v10

    move v9, v7

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v2, v10, v9

    .line 349
    .local v2, "drivers_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 350
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 352
    .local v0, "data":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 354
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 360
    .local v1, "driver_data":Ljava/lang/String;
    sget-object v12, Lnet/supercat/Detector;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v13, v12

    move v8, v7

    :goto_2
    if-ge v8, v13, :cond_1

    aget-object v5, v12, v8

    .line 361
    .local v5, "known_qemu_driver":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 362
    const-string v7, "Check QEmuDrivers is detected"

    invoke-direct {p0, v7}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 369
    .end local v0    # "data":[B
    .end local v1    # "driver_data":Ljava/lang/String;
    .end local v2    # "drivers_file":Ljava/io/File;
    .end local v5    # "known_qemu_driver":Ljava/lang/String;
    :goto_3
    return v6

    .line 355
    .restart local v0    # "data":[B
    .restart local v2    # "drivers_file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 356
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v1    # "driver_data":Ljava/lang/String;
    .restart local v5    # "known_qemu_driver":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 348
    .end local v0    # "data":[B
    .end local v1    # "driver_data":Ljava/lang/String;
    .end local v5    # "known_qemu_driver":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .end local v2    # "drivers_file":Ljava/io/File;
    :cond_2
    move v6, v7

    .line 369
    goto :goto_3
.end method

.method private checkQEmuProps()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "found_props":I
    sget-object v5, Lnet/supercat/Detector;->PROPERTIES:[Lnet/supercat/Property;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 387
    .local v1, "property":Lnet/supercat/Property;
    iget-object v7, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lnet/supercat/Property;->name:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lnet/supercat/Detector;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "property_value":Ljava/lang/String;
    iget-object v7, v1, Lnet/supercat/Property;->seek_value:Ljava/lang/String;

    if-nez v7, :cond_0

    if-eqz v2, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 391
    :cond_0
    iget-object v7, v1, Lnet/supercat/Property;->seek_value:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lnet/supercat/Property;->seek_value:Ljava/lang/String;

    .line 392
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 386
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "property":Lnet/supercat/Property;
    .end local v2    # "property_value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x5

    if-lt v0, v4, :cond_3

    .line 399
    const-string v3, "Check QEmuProps is detected"

    invoke-direct {p0, v3}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 400
    const/4 v3, 0x1

    .line 402
    :cond_3
    return v3
.end method

.method private checkTelephony()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/supercat/Detector;->isTelephony:Z

    if-eqz v1, :cond_1

    .line 280
    invoke-direct {p0}, Lnet/supercat/Detector;->isSupportTelePhony()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-direct {p0}, Lnet/supercat/Detector;->checkPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Lnet/supercat/Detector;->checkDeviceId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-direct {p0}, Lnet/supercat/Detector;->checkImsi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-direct {p0}, Lnet/supercat/Detector;->checkOperatorNameAndroid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 286
    :cond_1
    return v0
.end method

.method private detect()Z
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "result":Z
    invoke-static {}, Lnet/supercat/Detector;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 203
    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lnet/supercat/Detector;->checkBasic()Z

    move-result v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 209
    :cond_0
    if-nez v0, :cond_1

    .line 210
    invoke-direct {p0}, Lnet/supercat/Detector;->checkAdvanced()Z

    move-result v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Advanced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 215
    :cond_1
    if-nez v0, :cond_2

    .line 216
    invoke-direct {p0}, Lnet/supercat/Detector;->checkPackageName()Z

    move-result v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Package Name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 220
    :cond_2
    return v0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.PRODUCT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.MANUFACTURER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.BRAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.DEVICE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.MODEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.HARDWARE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.FINGERPRINT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 451
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v4, "android.os.SystemProperties"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 453
    .local v3, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 455
    .local v1, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 456
    .local v2, "params":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 458
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v3    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 459
    :catch_0
    move-exception v4

    .line 462
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSupportTelePhony()Z
    .locals 4

    .prologue
    .line 466
    iget-object v2, p0, Lnet/supercat/Detector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 467
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 468
    .local v0, "isSupport":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supported TelePhony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/supercat/Detector;->log(Ljava/lang/String;)V

    .line 469
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-boolean v0, p0, Lnet/supercat/Detector;->isDebug:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lnet/supercat/Detector;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    sget-object v0, Lnet/supercat/Detector;->mEmulatorDetector:Lnet/supercat/Detector;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lnet/supercat/Detector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/supercat/Detector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/supercat/Detector;->mEmulatorDetector:Lnet/supercat/Detector;

    .line 133
    :cond_1
    sget-object v0, Lnet/supercat/Detector;->mEmulatorDetector:Lnet/supercat/Detector;

    return-object v0
.end method


# virtual methods
.method public addPackageName(Ljava/lang/String;)Lnet/supercat/Detector;
    .locals 1
    .param p1, "pPackageName"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public addPackageName(Ljava/util/List;)Lnet/supercat/Detector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/supercat/Detector;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "pListPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    return-object p0
.end method

.method public detect(Lnet/supercat/Detector$OnEmulatorDetectorListener;)V
    .locals 2
    .param p1, "pOnEmulatorDetectorListener"    # Lnet/supercat/Detector$OnEmulatorDetectorListener;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/supercat/Detector$1;

    invoke-direct {v1, p0, p1}, Lnet/supercat/Detector$1;-><init>(Lnet/supercat/Detector;Lnet/supercat/Detector$OnEmulatorDetectorListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method public getPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lnet/supercat/Detector;->mListPackageName:Ljava/util/List;

    return-object v0
.end method

.method public isCheckPackage()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lnet/supercat/Detector;->isCheckPackage:Z

    return v0
.end method

.method public isCheckTelephony()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lnet/supercat/Detector;->isTelephony:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lnet/supercat/Detector;->isDebug:Z

    return v0
.end method

.method public setCheckPackage(Z)Lnet/supercat/Detector;
    .locals 0
    .param p1, "chkPackage"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lnet/supercat/Detector;->isCheckPackage:Z

    .line 167
    return-object p0
.end method

.method public setCheckTelephony(Z)Lnet/supercat/Detector;
    .locals 0
    .param p1, "telephony"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lnet/supercat/Detector;->isTelephony:Z

    .line 162
    return-object p0
.end method

.method public setDebug(Z)Lnet/supercat/Detector;
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lnet/supercat/Detector;->isDebug:Z

    .line 145
    return-object p0
.end method
