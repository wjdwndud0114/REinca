.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$campaignKey:I

.field final synthetic val$conversion_key:Ljava/lang/String;

.field final synthetic val$createdAt:Ljava/lang/String;

.field final synthetic val$isFirstTime:Ljava/lang/Boolean;

.field final synthetic val$resourceKey:I

.field final synthetic val$spaceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$campaignKey:I

    iput p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$resourceKey:I

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$spaceKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$createdAt:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$conversion_key:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$isFirstTime:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaign_key"

    iget v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$campaignKey:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v3, "resource_key"

    iget v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$resourceKey:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v3, "space_key"

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$spaceKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v3, "created_at"

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$createdAt:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$conversion_key:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$conversion_key:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "conversion_key"

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$conversion_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$isFirstTime:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$isFirstTime:Ljava/lang/Boolean;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "isFirstTime"

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$isFirstTime:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "Name"

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->val$createdAt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "Value"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "isDirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v3, "tbl_ImpressionTracking"

    invoke-virtual {p1, v3, v2}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    return-object v3

    .line 153
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
