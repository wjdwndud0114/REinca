.class public Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.source "VMSVersioningFTPEntryParser.java"


# static fields
.field private static final PRE_PARSE_REGEX:Ljava/lang/String; = "(.*);([0-9]+)\\s*.*"


# instance fields
.field private final _preparse_pattern_:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 87
    :try_start_0
    const-string v1, "(.*);([0-9]+)\\s*.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparseable regex supplied:  (.*);([0-9]+)\\s*.*"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected isVersioning()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v3, "existingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 110
    .local v4, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "entry":Ljava/lang/String;
    const/4 v7, 0x0

    .line 113
    .local v7, "result":Ljava/util/regex/MatchResult;
    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 114
    .local v0, "_preparse_matcher_":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v7

    .line 116
    invoke-interface {v7, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "version":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 119
    .local v6, "nv":Ljava/lang/Integer;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 120
    .local v2, "existing":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 122
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .end local v0    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "existing":Ljava/lang/Integer;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nv":Ljava/lang/Integer;
    .end local v7    # "result":Ljava/util/regex/MatchResult;
    .end local v8    # "version":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1    # "entry":Ljava/lang/String;
    const/4 v7, 0x0

    .line 137
    .restart local v7    # "result":Ljava/util/regex/MatchResult;
    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 138
    .restart local v0    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v7

    .line 140
    invoke-interface {v7, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    .restart local v5    # "name":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .restart local v8    # "version":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 143
    .restart local v6    # "nv":Ljava/lang/Integer;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 144
    .restart local v2    # "existing":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 146
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 152
    .end local v0    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "existing":Ljava/lang/Integer;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nv":Ljava/lang/Integer;
    .end local v7    # "result":Ljava/util/regex/MatchResult;
    .end local v8    # "version":Ljava/lang/String;
    :cond_3
    return-object p1
.end method
