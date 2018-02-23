.class public final Lcom/google/android/gms/drive/DriveStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final DRIVE_CONTENTS_TOO_LARGE:I = 0x5e4

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVE_RATE_LIMIT_EXCEEDED:I = 0x5e3

.field public static final DRIVE_RESOURCE_NOT_AVAILABLE:I = 0x5de


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "DRIVE_RESOURCE_ALREADY_EXISTS"

    goto :goto_0

    :sswitch_1
    const-string v0, "DRIVE_RESOURCE_NOT_AVAILABLE"

    goto :goto_0

    :sswitch_2
    const-string v0, "DRIVE_RESOURCE_FORBIDDEN"

    goto :goto_0

    :sswitch_3
    const-string v0, "DRIVE_REALTIME_CONCURRENT_CREATION"

    goto :goto_0

    :sswitch_4
    const-string v0, "DRIVE_REALTIME_INVALID_COMPOUND_OP"

    goto :goto_0

    :sswitch_5
    const-string v0, "DRIVE_FULL_SYNC_REQUIRED"

    goto :goto_0

    :sswitch_6
    const-string v0, "DRIVE_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :sswitch_7
    const-string v0, "DRIVE_CONTENTS_TOO_LARGE"

    goto :goto_0

    :sswitch_8
    const-string v0, "DRIVE_RESOURCE_PERMISSION_FORBIDDEN"

    goto :goto_0

    :sswitch_9
    const-string v0, "DRIVE_INAPPLICABLE_OPERATION"

    goto :goto_0

    :sswitch_a
    const-string v0, "DRIVE_INSUFFICIENT_SCOPES"

    goto :goto_0

    :sswitch_b
    const-string v0, "DRIVE_REALTIME_TOKEN_REFRESH_REQUIRED"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5dd -> :sswitch_0
        0x5de -> :sswitch_1
        0x5df -> :sswitch_2
        0x5e0 -> :sswitch_3
        0x5e1 -> :sswitch_4
        0x5e2 -> :sswitch_5
        0x5e3 -> :sswitch_6
        0x5e4 -> :sswitch_7
        0x5e5 -> :sswitch_8
        0x5e6 -> :sswitch_9
        0x5e7 -> :sswitch_a
        0xbbc -> :sswitch_b
    .end sparse-switch
.end method
