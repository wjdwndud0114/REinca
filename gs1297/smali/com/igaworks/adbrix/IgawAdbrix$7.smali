.class final Lcom/igaworks/adbrix/IgawAdbrix$7;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/IgawAdbrix;->retention(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/IgawAdbrix$7;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->retention(Ljava/lang/String;)V

    .line 159
    return-void
.end method
