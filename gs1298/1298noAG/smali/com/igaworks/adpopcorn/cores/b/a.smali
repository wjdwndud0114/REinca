.class public Lcom/igaworks/adpopcorn/cores/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/StackTraceElement;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[REWARD]"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    const-string v0, "[REWARD]"

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 9

    const/16 v2, 0x3e8

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x64

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->b:Ljava/lang/String;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v3

    move v3, v4

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_0

    const-string v3, "IsTest"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->c:Z

    const-string v3, "Result"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    const-string v3, "ResultCode"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->e:I

    const-string v3, "ResultMsg"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Result = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v5, "[REWARD]"

    iget-object v6, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v7, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v3, v5, v6, v7, v8}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->e:I

    sparse-switch v3, :sswitch_data_0

    const-string v0, "Undefined Error Code"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v1, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "JSONException"

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    throw v0

    :sswitch_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    move v0, v1

    goto/16 :goto_1

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v1, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_1

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    const/16 v0, 0x44c

    goto/16 :goto_1

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    const/16 v0, 0x1388

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Result"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v2, v3, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x44c -> :sswitch_3
        0x1388 -> :sswitch_4
    .end sparse-switch
.end method

.method public b()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->d:Z

    return v0
.end method

.method public c()I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResultCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->i:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/a;->h:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/a;->g:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/a;->f:Ljava/lang/String;

    return-object v0
.end method
