.class public Lcom/igaworks/adbrix/util/ADBrixUtil;
.super Ljava/lang/Object;
.source "ADBrixUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateEmailFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 8
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0

    .line 9
    :cond_0
    const-string v1, "[\\w\\~\\-\\.]+@[\\w\\~\\-]+(\\.[\\w\\~\\-]+)+"

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 12
    .local v0, "isValid":Z
    goto :goto_0
.end method
