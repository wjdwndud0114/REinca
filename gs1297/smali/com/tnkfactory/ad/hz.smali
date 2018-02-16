.class Lcom/tnkfactory/ad/hz;
.super Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:I

.field H:F

.field I:F

.field J:F

.field K:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:J

.field o:Z

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:I

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->h:Ljava/lang/String;

    iput v3, p0, Lcom/tnkfactory/ad/hz;->i:I

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->m:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/hz;->n:J

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->o:Z

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/hz;->s:I

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->v:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->w:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->x:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->y:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->z:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->A:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->B:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/hz;->C:Z

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->D:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/hz;->E:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/hz;->F:Ljava/lang/String;

    iput v3, p0, Lcom/tnkfactory/ad/hz;->G:I

    iput v4, p0, Lcom/tnkfactory/ad/hz;->H:F

    iput v4, p0, Lcom/tnkfactory/ad/hz;->I:F

    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, Lcom/tnkfactory/ad/hz;->J:F

    iput-object v2, p0, Lcom/tnkfactory/ad/hz;->K:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tnkfactory/ad/ia;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_sex"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/tnkfactory/ad/hz;->s:I

    if-gtz v0, :cond_2

    invoke-static {p1}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/hz;->s:I

    :cond_2
    iget v0, p0, Lcom/tnkfactory/ad/hz;->s:I

    if-lez v0, :cond_3

    const-string v0, "user_brth"

    iget v1, p0, Lcom/tnkfactory/ad/hz;->s:I

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/tnkfactory/ad/ia;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "user_cat"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/tnkfactory/ad/ia;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "user_cat_ext"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private a(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    const-string v0, "ph_mdl"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ph_os"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ph_ntn"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ph_lang"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ph_telco"

    iget-object v1, p0, Lcom/tnkfactory/ad/hz;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ph_tz"

    iget v1, p0, Lcom/tnkfactory/ad/hz;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v1, "tblt_yn"

    iget-boolean v0, p0, Lcom/tnkfactory/ad/hz;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/hz;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/tnkfactory/ad/hz;->v:Z

    if-eqz v1, :cond_0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/tnkfactory/ad/hz;->w:Z

    if-eqz v1, :cond_1

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/tnkfactory/ad/hz;->x:Z

    if-eqz v1, :cond_2

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tnkfactory/ad/hz;->s:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hz;->r:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 1

    new-instance v0, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v0}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/hz;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-direct {p0, p1, v0}, Lcom/tnkfactory/ad/hz;->a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hz;->t:Ljava/lang/String;

    return-void
.end method

.method public c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    new-instance v1, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v1}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    invoke-direct {p0, v1}, Lcom/tnkfactory/ad/hz;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    const-string v0, "res_cd"

    iget v2, p0, Lcom/tnkfactory/ad/hz;->G:I

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v0, "app_ver"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_pkg"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "os_type"

    const-string v2, "A"

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "all_ext_mkt"

    invoke-virtual {p0}, Lcom/tnkfactory/ad/hz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vdo_yn"

    const-string v2, "Y"

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "root_yn"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->E:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vm_yn"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->F:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "os_ver"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/tnkfactory/ad/hz;->n:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string v0, "prev_app_id"

    iget-wide v2, p0, Lcom/tnkfactory/ad/hz;->n:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    :cond_0
    const-string v0, "dsp_yn"

    const-string v2, "Y"

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "do_trace"

    iget-boolean v0, p0, Lcom/tnkfactory/ad/hz;->y:Z

    if-eqz v0, :cond_2

    const-string v0, "Y"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/tnkfactory/ad/hz;->a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    const-string v0, "cpm_yn"

    const-string v2, "Y"

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/hz;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "err_msg"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->K:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v2, "adid_limit"

    iget-boolean v0, p0, Lcom/tnkfactory/ad/hz;->z:Z

    if-eqz v0, :cond_3

    const-string v0, "Y"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bld_osv"

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bld_prd"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jcp"

    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "pkgr_yn"

    iget-boolean v0, p0, Lcom/tnkfactory/ad/hz;->B:Z

    if-eqz v0, :cond_4

    const-string v0, "Y"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "inst_mkt"

    iget-object v2, p0, Lcom/tnkfactory/ad/hz;->D:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "iv_yn"

    iget-boolean v0, p0, Lcom/tnkfactory/ad/hz;->C:Z

    if-eqz v0, :cond_5

    const-string v0, "Y"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string v0, "N"

    goto :goto_0

    :cond_3
    const-string v0, "N"

    goto :goto_1

    :cond_4
    const-string v0, "N"

    goto :goto_2

    :cond_5
    const-string v0, "N"

    goto :goto_3
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hz;->u:Ljava/lang/String;

    return-void
.end method
