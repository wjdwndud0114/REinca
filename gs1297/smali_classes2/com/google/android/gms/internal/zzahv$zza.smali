.class Lcom/google/android/gms/internal/zzahv$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahv$zza;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzahv$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzahv$zza;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/drive/events/zzm;Lcom/google/android/gms/drive/events/zzk;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAb()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/internal/zzahv$zza$1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzahv$zza$1;-><init>(Lcom/google/android/gms/drive/MetadataBuffer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzk;->zzAd()I

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahv$zza;->mContext:Landroid/content/Context;

    const-string v1, "EventCallback"

    const-string v2, "Don\'t know how to handle this event"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzahp;->zzh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/drive/events/zzh;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    invoke-interface {v0}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const-string v1, "EventCallback"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzahp;->zzE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast v1, Lcom/google/android/gms/drive/events/ChangeListener;

    check-cast v0, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/ChangeListener;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    goto :goto_0

    :pswitch_3
    check-cast v1, Lcom/google/android/gms/drive/events/CompletionListener;

    check-cast v0, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/CompletionListener;->onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Lcom/google/android/gms/drive/events/zzm;

    check-cast v0, Lcom/google/android/gms/drive/events/zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzahv$zza;->zza(Lcom/google/android/gms/drive/events/zzm;Lcom/google/android/gms/drive/events/zzk;)V

    goto :goto_0

    :pswitch_5
    check-cast v1, Lcom/google/android/gms/drive/events/zzd;

    check-cast v0, Lcom/google/android/gms/drive/events/zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/zzd;->zza(Lcom/google/android/gms/drive/events/zzb;)V

    goto :goto_0

    :pswitch_6
    check-cast v0, Lcom/google/android/gms/drive/events/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/zzn;->zzAe()Lcom/google/android/gms/internal/zzafz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzafx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzafx;-><init>(Lcom/google/android/gms/internal/zzafz;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/drive/events/zzh;Lcom/google/android/gms/drive/events/DriveEvent;)V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzahv$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzahv$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
