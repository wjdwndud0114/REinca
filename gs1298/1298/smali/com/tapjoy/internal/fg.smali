.class Lcom/tapjoy/internal/fg;
.super Lcom/tapjoy/internal/ff;
.source "SourceFile"


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Lcom/tapjoy/internal/fy;

.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/fy;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tapjoy/internal/ff;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/fg;->b:Ljava/io/File;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/fy;

    .line 58
    return-void
.end method

.method private b()V
    .locals 20

    .prologue
    .line 238
    sget-object v11, Lcom/tapjoy/internal/ff;->a:Ljava/util/Set;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT ROWID, * FROM UsageStats ORDER BY ROWID ASC"

    const/4 v4, 0x0

    .line 241
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 243
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM UsageStatValues ORDER BY stat_id ASC"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 258
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 259
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 261
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const/4 v4, 0x0

    .line 266
    :cond_1
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 267
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 268
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 269
    const/4 v10, 0x0

    .line 271
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 273
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    cmp-long v2, v16, v14

    if-nez v2, :cond_4

    .line 274
    if-nez v10, :cond_3

    .line 275
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 277
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 279
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 280
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, "_max"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/fy;

    invoke-virtual/range {v2 .. v10}, Lcom/tapjoy/internal/fy;->a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 293
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    :catchall_1
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 293
    :cond_6
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM UsageStats"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM UsageStatValues"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tapjoy/internal/fg;->g:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tapjoy/internal/fg;->f:J

    .line 302
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/fg;->g:J

    iput-wide v0, p0, Lcom/tapjoy/internal/fg;->f:J

    .line 130
    return-void
.end method

.method protected a(J)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->b:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v1, Landroid/database/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown database version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS UsageStats(name TEXT,dimensions TEXT,count INTEGER,first_time INTEGER,last_time INTEGER,PRIMARY KEY(name, dimensions))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS UsageStatValues(stat_id LONG,name TEXT,count INTEGER,avg REAL,max INTEGER,PRIMARY KEY(stat_id, name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT MIN(first_time), MAX(last_time) FROM UsageStats"

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/fg;->f:J

    .line 111
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/fg;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    iget-wide v0, p0, Lcom/tapjoy/internal/fg;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tapjoy/internal/fg;->f:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/tapjoy/internal/fg;->b()V

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 114
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 25

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 234
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 141
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->g:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->e:J

    .line 157
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    .line 158
    const-string p4, ""

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT ROWID,count,first_time,last_time FROM UsageStats WHERE name = ? AND dimensions = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    aput-object p4, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 169
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 170
    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 171
    const/4 v7, 0x2

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 172
    const/4 v7, 0x3

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 174
    const-string v7, "count"

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    cmp-long v6, p1, v10

    if-gez v6, :cond_3

    .line 176
    const-string v6, "first_time"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    :cond_3
    cmp-long v6, p1, v12

    if-lez v6, :cond_4

    .line 179
    const-string v6, "last_time"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "UsageStats"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ROWID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide v6, v4

    .line 191
    :goto_2
    if-eqz p5, :cond_c

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 192
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 196
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 198
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v11

    const/4 v11, 0x1

    aput-object v5, v4, v11

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT ROWID, * FROM UsageStatValues WHERE stat_id = ? AND name = ?"

    .line 200
    invoke-virtual {v11, v14, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 203
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 204
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 207
    const/4 v14, 0x3

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 208
    const/4 v15, 0x4

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 209
    const/4 v15, 0x5

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 211
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 212
    const-string v15, "count"

    add-int/lit8 v20, v14, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v15, "avg"

    long-to-double v0, v12

    move-wide/from16 v20, v0

    sub-double v20, v20, v16

    add-int/lit8 v14, v14, 0x1

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-double v16, v16, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v9, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 214
    cmp-long v14, v12, v18

    if-lez v14, :cond_6

    .line 215
    const-string v14, "max"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "UsageStatValues"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ROWID = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v12, v13, v9, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :goto_4
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 233
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 142
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->e:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->e:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-gez v4, :cond_8

    .line 144
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->g:J

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 145
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->g:J

    goto/16 :goto_1

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->e:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tapjoy/internal/fg;->g:J

    sub-long v4, v4, p1

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 149
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->e:J

    goto/16 :goto_1

    .line 151
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/fg;->b()V

    .line 154
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->g:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/internal/fg;->e:J

    goto/16 :goto_1

    .line 183
    :cond_a
    :try_start_3
    const-string v4, "name"

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "dimensions"

    move-object/from16 v0, p4

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v4, "count"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v4, "first_time"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v4, "last_time"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UsageStats"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    move-wide v6, v4

    goto/16 :goto_2

    .line 219
    :cond_b
    :try_start_4
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 220
    const-string v4, "stat_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v4, "name"

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "count"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v4, "avg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v4, "max"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UsageStatValues"

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 228
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fg;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    return-void
.end method
