.class public Lcom/tnkfactory/ad/AdCampaignItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected a:I

.field protected b:J

.field protected c:J

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/t;

    invoke-direct {v0}, Lcom/tnkfactory/ad/t;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/AdCampaignItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/ad/AdCampaignItem;->a(ILcom/tnkfactory/framework/vo/ValueObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdCampaignItem;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/tnkfactory/ad/AdCampaignItem;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    iget v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    iget-wide v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    iget-wide v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    iget v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iget-object v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    iget-wide v0, p1, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->ar:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    if-ne v0, v4, :cond_7

    sget v0, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPE:I

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->au:Ljava/lang/String;

    const-string v1, "{unit}"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    if-nez v0, :cond_a

    sget v0, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPI:I

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/hz;->B:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->at:Ljava/lang/String;

    const-string v1, "{unit}"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->as:Ljava/lang/String;

    const-string v1, "{unit}"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    add-int/lit8 v0, v0, -0x64

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->av:Ljava/lang/String;

    const-string v2, "{attend}"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(ILcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 4

    iput p1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    const-string v0, "app_id"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    const-string v0, "cmpn_id"

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    invoke-virtual {p2, v0, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "cpc_type"

    iget v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    const-string v0, "actn_desc"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "actn_id"

    iget v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    const-string v0, "pnt_unit"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    const-string v0, "pnt_amt"

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {p2, v0, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    const-string v0, "actn_desc"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    const-string v0, "user_desc"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, ":action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v1, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, ":cpc_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
