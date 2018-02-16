.class Lcom/google/android/gms/analytics/Tracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabA:J

.field final synthetic zzabB:Z

.field final synthetic zzabC:Z

.field final synthetic zzabD:Ljava/lang/String;

.field final synthetic zzabE:Lcom/google/android/gms/analytics/Tracker;

.field final synthetic zzabx:Ljava/util/Map;

.field final synthetic zzaby:Z

.field final synthetic zzabz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzaby:Z

    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabz:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabA:J

    iput-boolean p7, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabB:Z

    iput-boolean p8, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabC:Z

    iput-object p9, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v11, 0x1

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzmu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "sc"

    const-string v3, "start"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "cid"

    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/Tracker;->zzlT()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zztg;->zzd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "sf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/lang/String;D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v4, "cid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/zztg;->zza(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "Sampling enabled. Hit sampled out. sample rate"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/Tracker;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzrr;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzaby:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "ate"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrr;->zzmV()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzb(Ljava/util/Map;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrr;->zznf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsb;->zznX()Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzjI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "_v"

    sget-object v3, Lcom/google/android/gms/internal/zzrv;->zzacP:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "ul"

    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsm;->zzpb()Lcom/google/android/gms/internal/zzrj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrj;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "sr"

    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zze(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsm;->zzpc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabz:Ljava/lang/String;

    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabz:Ljava/lang/String;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v11

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzf(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsv;->zzpv()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzg(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "Too many hits sent too quickly, rate limiting invoked"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsx;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "ate"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "ht"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zzce(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabA:J

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabB:Z

    if-eqz v0, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/zzst;

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabC:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzrt;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzh(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v2, "Dry run enabled. Would have sent hit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzsx;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "an"

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "av"

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aiid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v6, Lcom/google/android/gms/internal/zzry;

    iget-object v10, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    move-wide v12, v7

    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/internal/zzry;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzi(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzry;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    const-string v3, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzst;

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabx:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabC:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzrt;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$1;->zzabE:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzj(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzst;)V

    goto/16 :goto_0

    :cond_8
    move v11, v1

    goto :goto_3
.end method
