.class public Lnet/supercat/KakaoLink;
.super Ljava/lang/Object;
.source "KakaoLink.java"


# static fields
.field private static KakaoLinkApiVersion:Ljava/lang/String;

.field private static KakaoLinkCharset:Ljava/nio/charset/Charset;

.field private static KakaoLinkEncoding:Ljava/lang/String;

.field private static KakaoLinkURLBaseString:Ljava/lang/String;

.field private static kakaoLink:Lnet/supercat/KakaoLink;


# instance fields
.field private context:Landroid/content/Context;

.field private params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lnet/supercat/KakaoLink;->kakaoLink:Lnet/supercat/KakaoLink;

    .line 32
    const-string v0, "2.0"

    sput-object v0, Lnet/supercat/KakaoLink;->KakaoLinkApiVersion:Ljava/lang/String;

    .line 33
    const-string v0, "kakaolink://sendurl"

    sput-object v0, Lnet/supercat/KakaoLink;->KakaoLinkURLBaseString:Ljava/lang/String;

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/supercat/KakaoLink;->KakaoLinkCharset:Ljava/nio/charset/Charset;

    .line 36
    sget-object v0, Lnet/supercat/KakaoLink;->KakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/supercat/KakaoLink;->KakaoLinkEncoding:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lnet/supercat/KakaoLink;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lnet/supercat/KakaoLink;->getBaseKakaoLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private appendMetaInfo(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "metaInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "metainfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    .line 183
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v6, "obj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .local v0, "arr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 188
    .local v4, "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v5, "metaObj":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "metaObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lnet/supercat/KakaoLink;->KakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "encodedValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .end local v2    # "encodedValue":Ljava/lang/String;
    :goto_3
    return-void

    .line 192
    .restart local v4    # "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "metaObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 194
    .end local v4    # "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "metaObj":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "metainfo"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 202
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method

.method private appendParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    sget-object v2, Lnet/supercat/KakaoLink;->KakaoLinkEncoding:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "encodedValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

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

    iput-object v2, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "encodedValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBaseKakaoLinkUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/supercat/KakaoLink;->KakaoLinkURLBaseString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLink(Landroid/content/Context;)Lnet/supercat/KakaoLink;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lnet/supercat/KakaoLink;->kakaoLink:Lnet/supercat/KakaoLink;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lnet/supercat/KakaoLink;->kakaoLink:Lnet/supercat/KakaoLink;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/supercat/KakaoLink;

    invoke-direct {v0, p0}, Lnet/supercat/KakaoLink;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 168
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

.method private openKakaoLink(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method


# virtual methods
.method public isAvailableIntent()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 159
    sget-object v4, Lnet/supercat/KakaoLink;->KakaoLinkURLBaseString:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "kakaoLinkTestUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lnet/supercat/KakaoLink;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 164
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

.method public openKakaoAppLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "appVer"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;
    .param p7, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p8, "metaInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, p2}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p3}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p4}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p5}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p6}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p7}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 135
    :cond_1
    :try_start_0
    sget-object v2, Lnet/supercat/KakaoLink;->KakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-static {p7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lnet/supercat/KakaoLink;->KakaoLinkEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p3    # "message":Ljava/lang/String;
    .local v1, "message":Ljava/lang/String;
    move-object p3, v1

    .line 141
    .end local v1    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/supercat/KakaoLink;->getBaseKakaoLinkUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    .line 143
    const-string v2, "url"

    invoke-direct {p0, v2, p2}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "msg"

    invoke-direct {p0, v2, p3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "apiver"

    sget-object v3, Lnet/supercat/KakaoLink;->KakaoLinkApiVersion:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "appid"

    invoke-direct {p0, v2, p4}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "appver"

    invoke-direct {p0, v2, p5}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "appname"

    invoke-direct {p0, v2, p6}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "type"

    const-string v3, "app"

    invoke-direct {p0, v2, v3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p8}, Lnet/supercat/KakaoLink;->appendMetaInfo(Ljava/util/ArrayList;)V

    .line 152
    iget-object v2, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/supercat/KakaoLink;->openKakaoLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 153
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public openKakaoLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "appVer"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;
    .param p7, "encoding"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p2}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p3}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p4}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p5}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p6}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p7}, Lnet/supercat/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

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
    sget-object v2, Lnet/supercat/KakaoLink;->KakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-static {p7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lnet/supercat/KakaoLink;->KakaoLinkEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p3    # "message":Ljava/lang/String;
    .local v1, "message":Ljava/lang/String;
    move-object p3, v1

    .line 98
    .end local v1    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/supercat/KakaoLink;->getBaseKakaoLinkUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    .line 100
    const-string v2, "url"

    invoke-direct {p0, v2, p2}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "msg"

    invoke-direct {p0, v2, p3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "apiver"

    sget-object v3, Lnet/supercat/KakaoLink;->KakaoLinkApiVersion:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "appid"

    invoke-direct {p0, v2, p4}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "appver"

    invoke-direct {p0, v2, p5}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "appname"

    invoke-direct {p0, v2, p6}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "type"

    const-string v3, "link"

    invoke-direct {p0, v2, v3}, Lnet/supercat/KakaoLink;->appendParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lnet/supercat/KakaoLink;->params:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/supercat/KakaoLink;->openKakaoLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
