.class public Lcom/inca/security/Common/SecurityEventParser$Process;
.super Ljava/lang/Object;
.source "SecurityEventParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Process"
.end annotation


# instance fields
.field public cmdline:Ljava/lang/String;

.field public pid:I

.field public ppid:I

.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventParser;

.field public userid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventParser;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventParser$Process;->this$0:Lcom/inca/security/Common/SecurityEventParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
