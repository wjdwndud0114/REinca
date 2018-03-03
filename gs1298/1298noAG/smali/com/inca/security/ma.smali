.class public final Lcom/inca/security/ma;
.super Ljava/io/IOException;
.source "ba"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field private static final synthetic IiIiIiiIii:J = 0x793ff77533f56541L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "yY}J~^;YuH~^iYu"

    invoke-static {v0}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method
