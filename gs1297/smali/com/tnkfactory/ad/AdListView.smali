.class public Lcom/tnkfactory/ad/AdListView;
.super Lcom/tnkfactory/ad/c;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final ID:I = 0x61


# instance fields
.field private g:J

.field private h:Lcom/tnkfactory/ad/v;

.field private k:Lcom/tnkfactory/ad/ae;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/tnkfactory/ad/AdItemList;

.field private u:Landroid/app/Activity;

.field private v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

.field private w:Z

.field private final x:Landroid/os/Handler;

.field private final y:Landroid/os/Handler;

.field private final z:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->o:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->q:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->r:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->s:I

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    new-instance v0, Lcom/tnkfactory/ad/ch;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ch;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->x:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/ci;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ci;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->y:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/cg;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/cg;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->z:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Lcom/tnkfactory/ad/AdListView;->setId(I)V

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/AdListView;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->d()V

    new-instance v0, Lcom/tnkfactory/ad/ae;

    iget v1, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    iget-object v2, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    invoke-direct {v0, p1, v1, v2}, Lcom/tnkfactory/ad/ae;-><init>(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/ae;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/ae;->a(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZI)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->o:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->q:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->r:I

    iput v2, p0, Lcom/tnkfactory/ad/AdListView;->s:I

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    iput-object v3, p0, Lcom/tnkfactory/ad/AdListView;->v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    new-instance v0, Lcom/tnkfactory/ad/ch;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ch;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->x:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/ci;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ci;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->y:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/cg;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/cg;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->z:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Lcom/tnkfactory/ad/AdListView;->setId(I)V

    invoke-direct {p0, p2}, Lcom/tnkfactory/ad/AdListView;->a(Z)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->d()V

    new-instance v0, Lcom/tnkfactory/ad/ae;

    iget v1, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    invoke-direct {v0, p1, v1, v3}, Lcom/tnkfactory/ad/ae;-><init>(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/ae;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/ae;->a(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private a([B[B)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdListView;)Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItemList;)Lcom/tnkfactory/ad/AdItemList;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->o:I

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idEmptySign:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->s:I

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->l(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    aget v1, v0, v2

    iput v1, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_3

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortraitTablet:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v2, v2, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->addView(Landroid/view/View;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idList:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idTitle:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->q:I

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idClose:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->r:I

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/tnkfactory/ad/bn;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/bn;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tnkfactory/ad/bo;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/bo;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/v;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdHeaderLayout;)Lcom/tnkfactory/ad/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/AdFooterItemView;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)Lcom/tnkfactory/ad/AdFooterItemView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tnkfactory/ad/AdListView;->setFooterViewOnClickListeners(Lcom/tnkfactory/ad/AdFooterItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    return-void

    :cond_3
    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscapeTablet:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    goto/16 :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortrait:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p2, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscape:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->f()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aditem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->c()V

    return-void
.end method

.method private a(Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/AdItem;->hasJoinedForInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/AdItem;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->d(Lcom/tnkfactory/ad/AdItem;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->b(Lcom/tnkfactory/ad/AdItem;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->d(Lcom/tnkfactory/ad/AdItem;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->c(Lcom/tnkfactory/ad/AdItem;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ds;->a(Landroid/view/ViewGroup;Z)Lcom/tnkfactory/ad/ds;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/ds;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/ds;->setFocusable(Z)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/ds;->requestFocus()Z

    invoke-virtual {v1, p1}, Lcom/tnkfactory/ad/ds;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "6.36"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/fd;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/ds;->setBottomText(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/tnkfactory/ad/ds;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 12

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v3, v0, Lcom/tnkfactory/ad/hz;->H:F

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget-boolean v5, v0, Lcom/tnkfactory/ad/hz;->o:Z

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->o:I

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->l(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->setBackgroundColor(I)V

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    int-to-float v1, v0

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    int-to-float v2, v0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/AdListView;->a(FFFZZ)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x4

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v0, v0, v7

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->n:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/16 v4, 0x64

    invoke-static {v2, v0, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x1

    invoke-direct {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v4

    iget-object v4, v4, Lcom/tnkfactory/ad/ha;->E:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/tnkfactory/ad/bl;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/bl;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v4, v2}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-boolean v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v8, v6

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-double v8, v6

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v6, v8

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v2

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v2}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/tnkfactory/ad/bb;->b:[B

    sget-object v7, Lcom/tnkfactory/ad/bb;->a:[B

    invoke-direct {p0, v6, v7}, Lcom/tnkfactory/ad/AdListView;->a([B[B)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v6, Lcom/tnkfactory/ad/bm;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/bm;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/16 v4, 0x65

    invoke-static {v2, v0, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/bj;->c(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-boolean v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v5, Lcom/tnkfactory/ad/AdFooterItemView;

    iget-object v6, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tnkfactory/ad/AdFooterItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v5}, Lcom/tnkfactory/ad/AdListView;->setFooterViewOnClickListeners(Lcom/tnkfactory/ad/AdFooterItemView;)V

    invoke-virtual {v5, v2}, Lcom/tnkfactory/ad/AdFooterItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0xffffff

    invoke-virtual {v5, v2}, Lcom/tnkfactory/ad/AdFooterItemView;->setBackgroundColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const/16 v4, 0x64

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p1, :cond_a

    const/4 v2, 0x2

    const/16 v4, 0x65

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/16 v4, 0x66

    invoke-static {v2, v0, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkAdWallStyle;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/16 v4, 0x9

    invoke-static {v3, v2, v4}, Lcom/tnkfactory/ad/ft;->e(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerColor:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v3, v3, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/AdListView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/v;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdHeaderLayout;)Lcom/tnkfactory/ad/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/AdFooterItemView;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)Lcom/tnkfactory/ad/AdFooterItemView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdListView;->setFooterViewOnClickListeners(Lcom/tnkfactory/ad/AdFooterItemView;)V

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->backgroundColor:I

    if-eqz v1, :cond_7

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdFooterItemView;->setBackgroundColor(I)V

    :cond_7
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_8
    const/16 v0, 0x9

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->q:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tnkfactory/ad/AdListView;->r:I

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_b
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private a(Landroid/view/View;)Z
    .locals 4

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->Z:Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->a:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/ce;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/ce;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tnkfactory/ad/ce;->a(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->b:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/cf;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/cf;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdListView;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private a(FFFZZ)[I
    .locals 11

    const/16 v0, 0x14

    new-array v6, v0, [I

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    const/4 v0, 0x3

    move v5, v0

    :goto_0
    if-nez p4, :cond_3

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    aput v1, v6, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkStyle;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    aput v1, v6, v0

    const/4 v0, 0x3

    const/16 v1, 0x28

    aput v1, v6, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    aget v1, v6, v1

    int-to-double v2, v1

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v8

    double-to-int v1, v2

    aput v1, v6, v0

    const/4 v0, 0x5

    aput v5, v6, v0

    :goto_1
    return-object v6

    :cond_0
    const/4 v0, 0x2

    move v5, v0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/4 v0, 0x2

    move v5, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    cmpl-float v0, p2, p1

    if-lez v0, :cond_5

    if-eqz p5, :cond_4

    const v0, 0x3f651eb8    # 0.895f

    mul-float v1, p2, v0

    const v0, 0x3f25a1cb    # 0.647f

    mul-float/2addr v0, v1

    :goto_2
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iget v2, v2, Lcom/tnkfactory/ad/TnkStyle;->height:I

    int-to-float v2, v2

    mul-float v4, v2, p3

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget v2, v2, Lcom/tnkfactory/ad/TnkStyle;->height:I

    int-to-float v2, v2

    mul-float v3, v2, p3

    const/high16 v2, 0x42040000    # 33.0f

    mul-float/2addr v2, p3

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v8, p3, v8

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    move v10, v2

    move v2, v4

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v10

    :goto_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, v6, v7

    const/4 v4, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v6, v4

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v6, v3

    const/4 v2, 0x3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v6, v2

    const/4 v1, 0x4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v6, v1

    const/4 v0, 0x5

    aput v5, v6, v0

    goto :goto_1

    :cond_4
    const v0, 0x3f533333    # 0.825f

    mul-float v1, p2, v0

    const v0, 0x3f2ac083    # 0.667f

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    const v0, 0x3f68b439    # 0.909f

    mul-float v1, p2, v0

    const v0, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    :goto_4
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iget v2, v2, Lcom/tnkfactory/ad/TnkStyle;->height:I

    int-to-float v2, v2

    mul-float v4, v2, p3

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget v2, v2, Lcom/tnkfactory/ad/TnkStyle;->height:I

    int-to-float v2, v2

    mul-float v3, v2, p3

    const/high16 v2, 0x42040000    # 33.0f

    mul-float/2addr v2, p3

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v8, p3, v8

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    move v10, v2

    move v2, v4

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v10

    goto :goto_3

    :cond_6
    const v0, 0x3f72f1aa    # 0.949f

    mul-float v1, p2, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    goto :goto_4
.end method

.method private b(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->f()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aditem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdListView;->e(Lcom/tnkfactory/ad/AdItem;)V

    return-void
.end method

.method private b(Lcom/tnkfactory/ad/AdItem;)V
    .locals 7

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const-string v1, ""

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v3

    iget-object v3, v3, Lcom/tnkfactory/ad/ha;->a:Ljava/lang/String;

    new-instance v4, Lcom/tnkfactory/ad/bs;

    invoke-direct {v4, p0, p1}, Lcom/tnkfactory/ad/bs;-><init>(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v5

    iget-object v5, v5, Lcom/tnkfactory/ad/ha;->b:Ljava/lang/String;

    new-instance v6, Lcom/tnkfactory/ad/bt;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/bt;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->g()V

    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/AdListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdListView;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/tnkfactory/ad/AdListView;)I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->o:I

    return v0
.end method

.method private c(Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/bu;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/bu;-><init>(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/bu;->start()V

    return-void
.end method

.method static synthetic d(Lcom/tnkfactory/ad/AdListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->x:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tnkfactory/ad/bz;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/bz;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    sput v1, Lcom/tnkfactory/ad/u;->f:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    sput v0, Lcom/tnkfactory/ad/u;->i:I

    goto :goto_0
.end method

.method private d(Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/tnkfactory/ad/bw;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/bw;-><init>(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/bw;->start()V

    return-void
.end method

.method static synthetic e(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/ae;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    return-object v0
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->s:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->s:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/AdListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/ae;->d()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private e(Lcom/tnkfactory/ad/AdItem;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    iget v1, p0, Lcom/tnkfactory/ad/AdListView;->l:I

    iget v2, p0, Lcom/tnkfactory/ad/AdListView;->m:I

    iget-object v3, p0, Lcom/tnkfactory/ad/AdListView;->v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tnkfactory/ad/ah;->a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/TnkAdDetailLayout;)Lcom/tnkfactory/ad/ah;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/ah;->a(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    invoke-virtual {v1, v5}, Lcom/tnkfactory/ad/ah;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v5}, Lcom/tnkfactory/ad/ah;->setFocusable(Z)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/ah;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/tnkfactory/ad/AdListView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->h:Lcom/tnkfactory/ad/v;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItemList;->getHeaderMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ae;->a(Lcom/tnkfactory/ad/AdItemList;)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/tnkfactory/ad/AdItemList;->findAdItem(J)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdListView;->d(Lcom/tnkfactory/ad/AdItem;)V

    :cond_0
    iput-wide v4, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    :cond_1
    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->e()V

    return-void
.end method

.method static synthetic g(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->h()V

    return-void
.end method

.method public static getCurrentDetailView(Landroid/app/Activity;)Lcom/tnkfactory/ad/ah;
    .locals 1

    const/16 v0, 0x60

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/ah;

    return-object v0
.end method

.method public static getCurrentView(Landroid/app/Activity;)Lcom/tnkfactory/ad/AdListView;
    .locals 1

    const/16 v0, 0x61

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdListView;

    return-object v0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->p:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private getTitleView()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->q:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->ap:Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/AdListView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->i()V

    return-void
.end method

.method private i()V
    .locals 0

    return-void
.end method

.method static synthetic i(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->j()V

    return-void
.end method

.method public static inflate(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;
    .locals 5

    const/16 v4, 0x61

    const/4 v3, 0x1

    const/4 v0, -0x1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TnkLayout.layout is not assigned, using default style..."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/tnkfactory/ad/AdListView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v4}, Lcom/tnkfactory/ad/AdListView;-><init>(Landroid/content/Context;ZI)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/bv;

    invoke-direct {v1}, Lcom/tnkfactory/ad/bv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Lcom/tnkfactory/ad/AdListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v3}, Lcom/tnkfactory/ad/AdListView;->setFocusable(Z)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/AdListView;

    invoke-direct {v0, p0, p1, v4}, Lcom/tnkfactory/ad/AdListView;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;I)V

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;Z)Lcom/tnkfactory/ad/AdListView;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/tnkfactory/ad/AdListView;

    const/16 v2, 0x61

    invoke-direct {v1, p0, p1, v2}, Lcom/tnkfactory/ad/AdListView;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/AdListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tnkfactory/ad/bk;

    invoke-direct {v0}, Lcom/tnkfactory/ad/bk;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/AdListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/AdListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/AdListView;->setFocusable(Z)V

    return-object v1
.end method

.method static synthetic j(Lcom/tnkfactory/ad/AdListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const-string v3, "support@tnkfactory.com"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic k(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/TnkAdDetailLayout;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->v:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    return-object v0
.end method

.method private k()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "u"

    sget-object v3, Lcom/tnkfactory/ad/fd;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Lcom/tnkfactory/ad/in;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic l(Lcom/tnkfactory/ad/AdListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->z:Landroid/os/Handler;

    return-object v0
.end method

.method public static removeCurrentDetailView(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->getCurrentDetailView(Landroid/app/Activity;)Lcom/tnkfactory/ad/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    :cond_0
    return-void
.end method

.method public static removeCurrentView(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->getCurrentView(Landroid/app/Activity;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/AdListView;->removeFromParentWithCloseEvent(ZI)V

    :cond_0
    return-void
.end method

.method private setFooterViewOnClickListeners(Lcom/tnkfactory/ad/AdFooterItemView;)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/bp;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/bp;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tnkfactory/ad/bq;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/bq;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->b(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tnkfactory/ad/br;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/br;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->c(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->requestFocus()Z

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->loadAdList(Landroid/app/Activity;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->a()V

    :cond_0
    return-void
.end method

.method public getCloseButton()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdListView;->r:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public loadAdList()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->loadAdList(Landroid/app/Activity;)V

    return-void
.end method

.method public loadAdList(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/ca;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ca;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ca;->start()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdItem;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/ah;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v3, v0}, Lcom/tnkfactory/ad/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    new-instance v3, Ljava/text/MessageFormat;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v4

    iget-object v4, v4, Lcom/tnkfactory/ad/ha;->W:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->X:Ljava/lang/String;

    new-instance v4, Lcom/tnkfactory/ad/cb;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/cb;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/tnkfactory/ad/cb;->a(Landroid/content/Context;J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->Y:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/cc;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/cc;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tnkfactory/ad/cc;->a(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->b:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/cd;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/cd;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->b()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    sput p1, Lcom/tnkfactory/ad/u;->a:I

    sput p2, Lcom/tnkfactory/ad/u;->b:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/c;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/AdListView;->w:Z

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/in;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/if;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdListView;->loadAdList(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->aA:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/bx;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/bx;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/tnkfactory/ad/by;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/by;-><init>(Lcom/tnkfactory/ad/AdListView;)V

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->loadAdList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/ia;->l(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->loadAdList()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->updateAdList()V

    goto :goto_0
.end method

.method public setPopupAppId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/AdListView;->g:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tnkfactory/ad/AdListView;->u:Landroid/app/Activity;

    :cond_0
    invoke-super {p0, p1}, Lcom/tnkfactory/ad/c;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public updateAdList()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->t:Lcom/tnkfactory/ad/AdItemList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdListView;->loadAdList()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdListView;->k:Lcom/tnkfactory/ad/ae;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->c()V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdListView;->e()V

    goto :goto_0
.end method
