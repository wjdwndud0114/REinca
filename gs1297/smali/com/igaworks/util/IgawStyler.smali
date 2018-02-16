.class public Lcom/igaworks/util/IgawStyler;
.super Ljava/lang/Object;
.source "IgawStyler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/util/IgawStyler$ToastStyle;
    }
.end annotation


# static fields
.field public static toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/igaworks/util/IgawStyler$ToastStyle;

    invoke-direct {v0}, Lcom/igaworks/util/IgawStyler$ToastStyle;-><init>()V

    sput-object v0, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
