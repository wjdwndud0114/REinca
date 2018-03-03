.class Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;
.super Ljava/lang/Object;
.source "CustomSQLiteCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    .line 46
    iput-object p2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->executor:Ljava/util/concurrent/Executor;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public static create(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)Landroid/database/Cursor;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    .end local p0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object p0

    .restart local p0    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;-><init>(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;)V

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 207
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 147
    return-void
.end method

.method public deactivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 189
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    return-void
.end method

.method public requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 237
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 232
    return-void
.end method
