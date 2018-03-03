.class public final Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
.super Ljava/lang/Object;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Lcom/facebook/share/widget/JoinAppGroupDialog$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    return-object v0
.end method
