.class public Lorg/apache/commons/net/ProtocolCommandEvent;
.super Ljava/util/EventObject;
.source "ProtocolCommandEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x59a629bebd214a8L


# instance fields
.field private final __command:Ljava/lang/String;

.field private final __isCommand:Z

.field private final __message:Ljava/lang/String;

.field private final __replyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "replyCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 82
    iput p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 83
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 59
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 61
    iput-object p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    return v0
.end method

.method public isCommand()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    return v0
.end method

.method public isReply()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
