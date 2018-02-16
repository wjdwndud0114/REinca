.class final Lcom/igaworks/adbrix/IgawAdbrix$6;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/IgawAdbrix;->setDemographic(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$6;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/adbrix/IgawAdbrix$6;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/IgawAdbrix$6;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adbrix/IgawAdbrix$6;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->setDemographic(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
