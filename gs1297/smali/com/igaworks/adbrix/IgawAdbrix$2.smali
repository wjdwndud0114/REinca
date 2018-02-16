.class final Lcom/igaworks/adbrix/IgawAdbrix$2;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/IgawAdbrix;->firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/adbrix/IgawAdbrix$2;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/IgawAdbrix$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adbrix/IgawAdbrix$2;->val$param:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
