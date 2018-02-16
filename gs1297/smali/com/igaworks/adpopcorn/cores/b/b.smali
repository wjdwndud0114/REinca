.class public Lcom/igaworks/adpopcorn/cores/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/StackTraceElement;

.field private m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/adpopcorn/cores/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[REWARD]"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->j:J

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    const-string v0, "[REWARD]"

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 13

    const/4 v0, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->c:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    move v1, v11

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    const-string v1, "Result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    const-string v1, "ResultCode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->e:I

    const-string v1, "ResultMsg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->f:Ljava/lang/String;

    const-string v1, "ClientVerify"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->g:Ljava/lang/String;

    const-string v1, "Signed"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->h:Ljava/lang/String;

    const-string v1, "USN"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->i:Ljava/lang/String;

    const-string v1, "Quantity"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Quantity"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->j:J

    :cond_0
    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->g:Ljava/lang/String;

    sget-object v3, Lcom/igaworks/adpopcorn/cores/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v3, "[REWARD]"

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v1, v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->e:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "Undefined Error Code"

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "RewardInfos"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v11

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v10, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Result Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "JSONException"

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v11}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v1, "Quantity"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Quantity"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->j:J

    :cond_3
    new-instance v1, Lcom/igaworks/adpopcorn/cores/d/b/a;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v3, "CampaignKey"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CampaignName"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ItemName"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "RTID"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/igaworks/adpopcorn/cores/b/b;->g:Ljava/lang/String;

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/cores/b/b;->j:J

    invoke-direct/range {v1 .. v9}, Lcom/igaworks/adpopcorn/cores/d/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_2

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v2, "[REWARD]"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x3e8 -> :sswitch_1
        0x44c -> :sswitch_1
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->d:Z

    return v0
.end method

.method public c()I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResultCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mClientVerify = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSigned = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mUSN = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->m:Landroid/content/Context;

    const-string v1, "[REWARD]"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/b/b;->l:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/b/b;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/b/b;->i:Ljava/lang/String;

    return-object v0
.end method
