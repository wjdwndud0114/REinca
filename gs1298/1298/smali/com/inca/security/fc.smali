.class public Lcom/inca/security/fc;
.super Ljava/lang/Object;
.source "mc"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Core/AppGuardEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:I

.field public final synthetic IIIiiiiIII:Lcom/inca/security/Core/AppGuardEngine;

.field public synthetic IiIiIiiIii:[B

.field public synthetic IiiIiiiIiI:I


# direct methods
.method public constructor <init>(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/inca/security/fc;->IIIiiiiIII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
