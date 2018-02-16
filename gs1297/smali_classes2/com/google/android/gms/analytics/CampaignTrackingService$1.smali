.class Lcom/google/android/gms/analytics/CampaignTrackingService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/CampaignTrackingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaaA:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field final synthetic zzaay:Lcom/google/android/gms/internal/zzsx;

.field final synthetic zzaaz:I

.field final synthetic zzs:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/internal/zzsx;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaaA:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaay:Lcom/google/android/gms/internal/zzsx;

    iput-object p3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzs:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaaz:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaaA:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaay:Lcom/google/android/gms/internal/zzsx;

    iget-object v2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzs:Landroid/os/Handler;

    iget v3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzaaz:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zza(Lcom/google/android/gms/internal/zzsx;Landroid/os/Handler;I)V

    return-void
.end method
