.class public Landroid/support/constraint/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/e$a;,
        Landroid/support/constraint/a/a/e$b;,
        Landroid/support/constraint/a/a/e$c;
    }
.end annotation


# instance fields
.field final a:Landroid/support/constraint/a/a/f;

.field final b:Landroid/support/constraint/a/a/e$c;

.field c:Landroid/support/constraint/a/a/e;

.field public d:I

.field e:I

.field f:Landroid/support/constraint/a/h;

.field private g:Landroid/support/constraint/a/a/m;

.field private h:Landroid/support/constraint/a/a/e$b;

.field private i:Landroid/support/constraint/a/a/e$a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/a/m;

    invoke-direct {v0, p0}, Landroid/support/constraint/a/a/m;-><init>(Landroid/support/constraint/a/a/e;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->g:Landroid/support/constraint/a/a/m;

    iput v1, p0, Landroid/support/constraint/a/a/e;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/e;->e:I

    sget-object v0, Landroid/support/constraint/a/a/e$b;->a:Landroid/support/constraint/a/a/e$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->h:Landroid/support/constraint/a/a/e$b;

    sget-object v0, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->i:Landroid/support/constraint/a/a/e$a;

    iput v1, p0, Landroid/support/constraint/a/a/e;->j:I

    iput-object p1, p0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    iput-object p2, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/constraint/a/a/m;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->g:Landroid/support/constraint/a/a/m;

    return-object v0
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/h;

    sget-object v1, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/a/h;-><init>(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    invoke-virtual {v0}, Landroid/support/constraint/a/h;->b()V

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/a/e;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->d()Landroid/support/constraint/a/a/e$c;

    move-result-object v3

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    sget-object v3, Landroid/support/constraint/a/a/e$c;->f:Landroid/support/constraint/a/a/e$c;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->c()Landroid/support/constraint/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->c()Landroid/support/constraint/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/f;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/support/constraint/a/a/e$1;->a:[I

    iget-object v4, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e$c;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    sget-object v2, Landroid/support/constraint/a/a/e$c;->f:Landroid/support/constraint/a/a/e$c;

    if-eq v3, v2, :cond_4

    sget-object v2, Landroid/support/constraint/a/a/e$c;->h:Landroid/support/constraint/a/a/e$c;

    if-eq v3, v2, :cond_4

    sget-object v2, Landroid/support/constraint/a/a/e$c;->i:Landroid/support/constraint/a/a/e$c;

    if-eq v3, v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_2
    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    if-eq v3, v2, :cond_5

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    if-ne v3, v2, :cond_7

    :cond_5
    move v2, v0

    :goto_2
    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->c()Landroid/support/constraint/a/a/f;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/a/a/i;

    if-eqz v4, :cond_b

    if-nez v2, :cond_6

    sget-object v2, Landroid/support/constraint/a/a/e$c;->h:Landroid/support/constraint/a/a/e$c;

    if-ne v3, v2, :cond_0

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_2

    :pswitch_3
    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    if-eq v3, v2, :cond_8

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    if-ne v3, v2, :cond_a

    :cond_8
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->c()Landroid/support/constraint/a/a/f;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/a/a/i;

    if-eqz v4, :cond_b

    if-nez v2, :cond_9

    sget-object v2, Landroid/support/constraint/a/a/e$c;->i:Landroid/support/constraint/a/a/e$c;

    if-ne v3, v2, :cond_0

    :cond_9
    move v1, v0

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/constraint/a/a/e;IILandroid/support/constraint/a/a/e$b;IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/e;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/a/e;->e:I

    sget-object v1, Landroid/support/constraint/a/a/e$b;->a:Landroid/support/constraint/a/a/e$b;

    iput-object v1, p0, Landroid/support/constraint/a/a/e;->h:Landroid/support/constraint/a/a/e$b;

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/constraint/a/a/e;->j:I

    :goto_0
    return v0

    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/e;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-lez p2, :cond_2

    iput p2, p0, Landroid/support/constraint/a/a/e;->d:I

    :goto_1
    iput p3, p0, Landroid/support/constraint/a/a/e;->e:I

    iput-object p4, p0, Landroid/support/constraint/a/a/e;->h:Landroid/support/constraint/a/a/e$b;

    iput p5, p0, Landroid/support/constraint/a/a/e;->j:I

    goto :goto_0

    :cond_2
    iput v1, p0, Landroid/support/constraint/a/a/e;->d:I

    goto :goto_1
.end method

.method public a(Landroid/support/constraint/a/a/e;ILandroid/support/constraint/a/a/e$b;I)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/e;IILandroid/support/constraint/a/a/e$b;IZ)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/constraint/a/h;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->f:Landroid/support/constraint/a/h;

    return-object v0
.end method

.method public c()Landroid/support/constraint/a/a/f;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    return-object v0
.end method

.method public d()Landroid/support/constraint/a/a/e$c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    return-object v0
.end method

.method public e()I
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->l()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/e;->e:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->l()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/e;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/e;->d:I

    goto :goto_0
.end method

.method public f()Landroid/support/constraint/a/a/e$b;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->h:Landroid/support/constraint/a/a/e$b;

    return-object v0
.end method

.method public g()Landroid/support/constraint/a/a/e;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->j:I

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/e;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/e;->e:I

    sget-object v0, Landroid/support/constraint/a/a/e$b;->b:Landroid/support/constraint/a/a/e$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->h:Landroid/support/constraint/a/a/e$b;

    iput v1, p0, Landroid/support/constraint/a/a/e;->j:I

    sget-object v0, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->i:Landroid/support/constraint/a/a/e$a;

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->g:Landroid/support/constraint/a/a/m;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/m;->b()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
