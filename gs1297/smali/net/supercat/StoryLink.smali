.class public Lnet/supercat/StoryLink;
.super Ljava/lang/Object;
.source "StoryLink.java"


# static fields
.field private static storyLinkApiVersion:Ljava/lang/String;

.field private static storyLinkCharset:Ljava/nio/charset/Charset;

.field private static storyLinkEncoding:Ljava/lang/String;

.field private static storyLinkURLBaseString:Ljava/lang/String;

.field private static stroyLink:Lnet/supercat/StoryLink;


# instance fields
.field private context:Landroid/content/Context;

.field private params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lnet/supercat/StoryLink;->stroyLink:Lnet/supercat/StoryLink;

    .line 31
    const-string v0, "1.0"

    sput-object v0, Lnet/supercat/StoryLink;->storyLinkApiVersion:Ljava/lang/String;

    .line 32
    const-string v0, "storylink://posting"

    sput-object v0, Lnet/supercat/StoryLink;->storyLinkURLBaseString:Ljava/lang/String;

    .line 34
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/supercat/StoryLink;->storyLinkCharset:Ljava/nio/charset/Charset;

    .line 35
    sget-object v0, Lnet/supercat/StoryLink;->storyLinkCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/supercat/StoryLink;->storyLinkEncoding:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lnet/supercat/StoryLink;->context:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lnet/supercat/StoryLink;->getBaseStoryLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private appendParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    sget-object v2, Lnet/supercat/StoryLink;->storyLinkEncoding:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "encodedValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "encodedValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private appendUrlInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "urlInfoAndroid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "urlinfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    .line 138
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v3, "metaObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "key":Ljava/lang/String;
    const-string v5, "imageurl"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/supercat/StoryLink;->getImageUrl(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/supercat/StoryLink;->storyLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "encodedValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .end local v1    # "encodedValue":Ljava/lang/String;
    :goto_1
    return-void

    .line 145
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 155
    .end local v2    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private getBaseStoryLinkUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/supercat/StoryLink;->storyLinkURLBaseString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageUrl(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/Object;

    .prologue
    .line 161
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 162
    .local v0, "arrImageUrl":Lorg/json/JSONArray;
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "imageUrl":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    .line 164
    .local v2, "objImageUrl":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 165
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object v0
.end method

.method public static getLink(Landroid/content/Context;)Lnet/supercat/StoryLink;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lnet/supercat/StoryLink;->stroyLink:Lnet/supercat/StoryLink;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lnet/supercat/StoryLink;->stroyLink:Lnet/supercat/StoryLink;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/supercat/StoryLink;

    invoke-direct {v0, p0}, Lnet/supercat/StoryLink;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openStoryLink(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method


# virtual methods
.method public isAvailableIntent()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 114
    sget-object v4, Lnet/supercat/StoryLink;->storyLinkURLBaseString:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "kakaoLinkTestUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lnet/supercat/StoryLink;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public openKakaoLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "post"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appVer"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p7, "urlInfoAndroid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lnet/supercat/StoryLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p3}, Lnet/supercat/StoryLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p4}, Lnet/supercat/StoryLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p5}, Lnet/supercat/StoryLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p6}, Lnet/supercat/StoryLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 92
    :cond_1
    :try_start_0
    sget-object v2, Lnet/supercat/StoryLink;->storyLinkCharset:Ljava/nio/charset/Charset;

    invoke-static {p6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lnet/supercat/StoryLink;->storyLinkEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2    # "post":Ljava/lang/String;
    .local v1, "post":Ljava/lang/String;
    move-object p2, v1

    .line 98
    .end local v1    # "post":Ljava/lang/String;
    .restart local p2    # "post":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/supercat/StoryLink;->getBaseStoryLinkUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    .line 100
    const-string v2, "post"

    invoke-direct {p0, v2, p2}, Lnet/supercat/StoryLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "appid"

    invoke-direct {p0, v2, p3}, Lnet/supercat/StoryLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "appver"

    invoke-direct {p0, v2, p4}, Lnet/supercat/StoryLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "apiver"

    sget-object v3, Lnet/supercat/StoryLink;->storyLinkApiVersion:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lnet/supercat/StoryLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "appname"

    invoke-direct {p0, v2, p5}, Lnet/supercat/StoryLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p7}, Lnet/supercat/StoryLink;->appendUrlInfo(Ljava/util/Map;)V

    .line 107
    iget-object v2, p0, Lnet/supercat/StoryLink;->params:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/supercat/StoryLink;->openStoryLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 108
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public openStoryLinkImageApp(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    const-string v1, "com.kakao.story"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
