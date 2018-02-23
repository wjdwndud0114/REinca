.class Lcom/unity3d/ads/log/DeviceLogEntry;
.super Ljava/lang/Object;
.source "DeviceLogEntry.java"


# instance fields
.field private _logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

.field private _originalMessage:Ljava/lang/String;

.field private _stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "logLevel"    # Lcom/unity3d/ads/log/DeviceLogLevel;
    .param p2, "originalMessage"    # Ljava/lang/String;
    .param p3, "stackTraceElement"    # Ljava/lang/StackTraceElement;

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    .line 6
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    .line 13
    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    return-object v0
.end method

.method public getParsedMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 20
    iget-object v3, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 21
    .local v3, "message":Ljava/lang/String;
    const-string v0, "UnknownClass"

    .line 22
    .local v0, "className":Ljava/lang/String;
    const-string v4, "unknownMethod"

    .line 23
    .local v4, "methodName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 25
    .local v1, "lineNumber":I
    iget-object v5, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_0

    .line 26
    iget-object v5, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v5, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 31
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    :cond_1
    if-nez v3, :cond_2

    const-string v3, ""

    .line 34
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "lineNumberPart":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
