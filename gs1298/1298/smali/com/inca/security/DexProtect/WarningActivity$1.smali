.class public Lcom/inca/security/DexProtect/WarningActivity$1;
.super Ljava/lang/Thread;
.source "wb"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/DexProtect/WarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/DexProtect/WarningActivity;


# direct methods
.method public constructor <init>(Lcom/inca/security/DexProtect/WarningActivity;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/DexProtect/WarningActivity;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/inca/security/DexProtect/WarningActivity$1;->IiIiIiiIii:Lcom/inca/security/DexProtect/WarningActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    const-wide/16 v0, 0x9c4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/inca/security/DexProtect/WarningActivity$1;->IiIiIiiIii:Lcom/inca/security/DexProtect/WarningActivity;

    invoke-static {v0}, Lcom/inca/security/DexProtect/WarningActivity;->IiiiIIIIii(Lcom/inca/security/DexProtect/WarningActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method
