.class public Lcom/facebook/share/internal/VideoUploader;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;,
        Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$UploadContext;
    }
.end annotation


# static fields
.field private static final ERROR_BAD_SERVER_RESPONSE:Ljava/lang/String; = "Unexpected error in server response"

.field private static final ERROR_UPLOAD:Ljava/lang/String; = "Video upload failed"

.field private static final MAX_RETRIES_PER_PHASE:I = 0x2

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_END_OFFSET:Ljava/lang/String; = "end_offset"

.field private static final PARAM_FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static final PARAM_REF:Ljava/lang/String; = "ref"

.field private static final PARAM_SESSION_ID:Ljava/lang/String; = "upload_session_id"

.field private static final PARAM_START_OFFSET:Ljava/lang/String; = "start_offset"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final PARAM_UPLOAD_PHASE:Ljava/lang/String; = "upload_phase"

.field private static final PARAM_VALUE_UPLOAD_FINISH_PHASE:Ljava/lang/String; = "finish"

.field private static final PARAM_VALUE_UPLOAD_START_PHASE:Ljava/lang/String; = "start"

.field private static final PARAM_VALUE_UPLOAD_TRANSFER_PHASE:Ljava/lang/String; = "transfer"

.field private static final PARAM_VIDEO_FILE_CHUNK:Ljava/lang/String; = "video_file_chunk"

.field private static final PARAM_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final RETRY_DELAY_BACK_OFF_FACTOR:I = 0x3

.field private static final RETRY_DELAY_UNIT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VideoUploader"

.field private static final UPLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static handler:Landroid/os/Handler;

.field private static initialized:Z

.field private static pendingUploads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/share/internal/VideoUploader$UploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadQueue:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Lcom/facebook/FacebookException;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized cancelAllRequests()V
    .locals 4

    .prologue
    .line 136
    const-class v2, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    check-cast v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 137
    .restart local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "workItem"    # Ljava/lang/Runnable;

    .prologue
    .line 207
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v1

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .param p3, "completedRetries"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method private static enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 1
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private static enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 1
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private static getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 217
    const/4 v11, 0x0

    const-string v12, "Error reading video chunk. Expected chunk \'%s\'. Requested chunk \'%s\'."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const/4 v11, 0x0

    .line 254
    :goto_0
    return-object v11

    .line 225
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 226
    .local v8, "chunkStartLong":J
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 227
    .local v6, "chunkEndLong":J
    sub-long v12, v6, v8

    long-to-int v5, v12

    .line 229
    .local v5, "chunkSize":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v4, "byteBufferStream":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x2000

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    .local v3, "bufferSize":I
    new-array v2, v3, [B

    .line 233
    .local v2, "buffer":[B
    const/4 v10, 0x0

    .line 234
    .local v10, "len":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 235
    const/4 v11, 0x0

    invoke-virtual {v4, v2, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 237
    sub-int/2addr v5, v10

    .line 238
    if-nez v5, :cond_3

    .line 252
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 254
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    goto :goto_0

    .line 241
    :cond_3
    if-gez v5, :cond_1

    .line 243
    const/4 v11, 0x0

    const-string v12, "Error reading video chunk. Expected buffer length - \'%d\'. Actual - \'%d\'."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int v15, v5, v10

    .line 246
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 247
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 243
    invoke-static {v11, v12, v13}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 147
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    .line 150
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 1
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/facebook/share/internal/VideoUploader;->removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 283
    const-string v0, "VideoUploader"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-void
.end method

.method private static registerAccessTokenTracker()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 277
    return-void
.end method

.method private static declared-synchronized removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .locals 2
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .prologue
    .line 143
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_0
    const-string v0, "me"

    invoke-static {p0, v0, p1}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v1

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 5
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "graphNode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v4, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    if-nez v3, :cond_0

    .line 114
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V

    .line 115
    const/4 v3, 0x1

    sput-boolean v3, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    .line 118
    :cond_0
    const-string v3, "videoContent"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v3, "graphNode"

    invoke-static {p1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    .line 121
    .local v1, "video":Lcom/facebook/share/model/ShareVideo;
    const-string v3, "videoContent.video"

    invoke-static {v1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "videoUri":Landroid/net/Uri;
    const-string v3, "videoContent.video.localUrl"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V

    .line 126
    .local v0, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    # invokes: Lcom/facebook/share/internal/VideoUploader$UploadContext;->initialize()V
    invoke-static {v0}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 128
    sget-object v3, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v4

    return-void

    .line 113
    .end local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .end local v1    # "video":Lcom/facebook/share/model/ShareVideo;
    .end local v2    # "videoUri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
