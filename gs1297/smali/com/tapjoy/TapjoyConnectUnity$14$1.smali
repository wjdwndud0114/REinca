.class Lcom/tapjoy/TapjoyConnectUnity$14$1;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity$14;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity$14;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$14$1;->this$0:Lcom/tapjoy/TapjoyConnectUnity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 551
    return-void
.end method
