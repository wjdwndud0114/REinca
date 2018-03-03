.class public Lcom/igaworks/adpopcorn/api/APIResult$Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/api/APIResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# static fields
.field public static final ALREADY_INSTALLED_APP:Ljava/lang/String; = "Already installed app"

.field public static final ALREADY_PARTICIPATED_CAMPAIGN:Ljava/lang/String; = "You have already participated in this campaign."

.field public static final DAILY_CAP_EXCEEDED:Ljava/lang/String; = "Daily Cap has been reached or the offer is no longer valid."

.field public static final EMULATOR_OR_ROOTING_DEVICE:Ljava/lang/String; = "Emulator or Rooting device"

.field public static final GET_VIDEO_INFO_FAILED:Ljava/lang/String; = "Emulator or Rooting device"

.field public static final INVALID_CAMPAIGN_LIST:Ljava/lang/String; = "Invalid campaign list. Please refresh campaign list."

.field public static final INVALID_INSTALLER:Ljava/lang/String; = "invalid installer."

.field public static final NO_REQUIRED_PERMISSION:Ljava/lang/String; = "No required permission"

.field public static final PARTICIPATE_SUCCESS:Ljava/lang/String; = "Participate Success"

.field public static final REWARD_PAYMENT_SUCCESS:Ljava/lang/String; = "Your reward was delivered successfully. It may take up to 5 minutes to receive your reward depending on the network conditions."

.field public static final SUCCESS:Ljava/lang/String; = "Success"

.field public static final TIMEOUT:Ljava/lang/String; = "Server Timeout"

.field public static final UNKNOWN_SERVER_ERROR:Ljava/lang/String; = "Unknown Server Error"

.field public static final UPCOMING_CAMPAIGN:Ljava/lang/String; = "Upcoming or closed Campaign"


# instance fields
.field final synthetic this$0:Lcom/igaworks/adpopcorn/api/APIResult;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/api/APIResult;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/APIResult$Message;->this$0:Lcom/igaworks/adpopcorn/api/APIResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
