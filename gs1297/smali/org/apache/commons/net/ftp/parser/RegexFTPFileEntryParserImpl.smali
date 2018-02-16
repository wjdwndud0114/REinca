.class public abstract Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "RegexFTPFileEntryParserImpl.java"


# instance fields
.field protected _matcher_:Ljava/util/regex/Matcher;

.field private pattern:Ljava/util/regex/Pattern;

.field private result:Ljava/util/regex/MatchResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 43
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    .line 48
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 54
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public getGroupCnt()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupsAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v3, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public group(I)Ljava/lang/String;
    .locals 1
    .param p1, "matchnum"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 85
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRegex(Ljava/lang/String;)Z
    .locals 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v1, 0x1

    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparseable regex supplied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
