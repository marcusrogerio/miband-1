.class public Lu/aly/cr;
.super Lu/aly/cy;


# static fields
.field protected static final a:I = -0x10000

.field protected static final b:I = -0x7fff0000

.field private static final h:Lu/aly/dd;


# instance fields
.field protected c:Z

.field protected d:Z

.field protected e:I

.field protected f:Z

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu/aly/dd;

    invoke-direct {v0}, Lu/aly/dd;-><init>()V

    sput-object v0, Lu/aly/cr;->h:Lu/aly/dd;

    return-void
.end method

.method public constructor <init>(Lu/aly/dm;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lu/aly/cr;-><init>(Lu/aly/dm;ZZ)V

    return-void
.end method

.method public constructor <init>(Lu/aly/dm;ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lu/aly/cy;-><init>(Lu/aly/dm;)V

    iput-boolean v0, p0, Lu/aly/cr;->c:Z

    iput-boolean v1, p0, Lu/aly/cr;->d:Z

    iput-boolean v0, p0, Lu/aly/cr;->f:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lu/aly/cr;->i:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/cr;->j:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lu/aly/cr;->k:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lu/aly/cr;->l:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lu/aly/cr;->m:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/cr;->n:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lu/aly/cr;->o:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lu/aly/cr;->p:[B

    iput-boolean p2, p0, Lu/aly/cr;->c:Z

    iput-boolean p3, p0, Lu/aly/cr;->d:Z

    return-void
.end method

.method private a([BII)I
    .locals 2

    invoke-virtual {p0, p3}, Lu/aly/cr;->d(I)V

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lu/aly/dm;->d([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v1

    invoke-virtual {p0, v1}, Lu/aly/cr;->d(I)V

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->h()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->f()[B

    move-result-object v0

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2}, Lu/aly/dm;->g()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2, v1}, Lu/aly/dm;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lu/aly/dm;->d([BII)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lu/aly/cr;->i:[B

    aput-byte p1, v0, v3

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    iget-object v1, p0, Lu/aly/cr;->i:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/dm;->b([BII)V

    return-void
.end method

.method public a(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/cr;->a(J)V

    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lu/aly/cr;->k:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lu/aly/cr;->k:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->k:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->k:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    iget-object v1, p0, Lu/aly/cr;->k:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/dm;->b([BII)V

    return-void
.end method

.method public a(J)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->l:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    iget-object v1, p0, Lu/aly/cr;->l:[B

    invoke-virtual {v0, v1, v6, v7}, Lu/aly/dm;->b([BII)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lu/aly/cr;->a(I)V

    iget-object v1, p0, Lu/aly/cr;->g:Lu/aly/dm;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lu/aly/dm;->b([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lu/aly/cf;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    iget-object v1, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lu/aly/dm;->b([BII)V

    return-void
.end method

.method public a(Lu/aly/ct;)V
    .locals 1

    iget-byte v0, p1, Lu/aly/ct;->b:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget-short v0, p1, Lu/aly/ct;->c:S

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(S)V

    return-void
.end method

.method public a(Lu/aly/cu;)V
    .locals 1

    iget-byte v0, p1, Lu/aly/cu;->a:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget v0, p1, Lu/aly/cu;->b:I

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    return-void
.end method

.method public a(Lu/aly/cv;)V
    .locals 1

    iget-byte v0, p1, Lu/aly/cv;->a:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget-byte v0, p1, Lu/aly/cv;->b:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget v0, p1, Lu/aly/cv;->c:I

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    return-void
.end method

.method public a(Lu/aly/cw;)V
    .locals 2

    iget-boolean v0, p0, Lu/aly/cr;->d:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x7fff0000

    iget-byte v1, p1, Lu/aly/cw;->b:B

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    iget-object v0, p1, Lu/aly/cw;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(Ljava/lang/String;)V

    iget v0, p1, Lu/aly/cw;->c:I

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lu/aly/cw;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(Ljava/lang/String;)V

    iget-byte v0, p1, Lu/aly/cw;->b:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget v0, p1, Lu/aly/cw;->c:I

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    goto :goto_0
.end method

.method public a(Lu/aly/dc;)V
    .locals 1

    iget-byte v0, p1, Lu/aly/dc;->a:B

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    iget v0, p1, Lu/aly/dc;->b:I

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(I)V

    return-void
.end method

.method public a(Lu/aly/dd;)V
    .locals 0

    return-void
.end method

.method public a(S)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lu/aly/cr;->j:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lu/aly/cr;->j:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    iget-object v1, p0, Lu/aly/cr;->j:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/dm;->b([BII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lu/aly/cr;->d(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lu/aly/cr;->g:Lu/aly/dm;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lu/aly/dm;->d([BII)I

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lu/aly/cf;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Lu/aly/cr;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/aly/cr;->f:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/cr;->a(B)V

    return-void
.end method

.method protected d(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lu/aly/cr;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lu/aly/cr;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lu/aly/cr;->e:I

    iget v0, p0, Lu/aly/cr;->e:I

    if-gez v0, :cond_1

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message length exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Lu/aly/cw;
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v1

    if-gez v1, :cond_1

    const/high16 v0, -0x10000

    and-int/2addr v0, v1

    const/high16 v2, -0x7fff0000

    if-eq v0, v2, :cond_0

    new-instance v0, Lu/aly/cz;

    const-string v1, "Bad version in readMessageBegin"

    invoke-direct {v0, v3, v1}, Lu/aly/cz;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lu/aly/cw;

    invoke-virtual {p0}, Lu/aly/cr;->z()Ljava/lang/String;

    move-result-object v2

    int-to-byte v1, v1

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lu/aly/cw;-><init>(Ljava/lang/String;BI)V

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lu/aly/cr;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lu/aly/cz;

    const-string v1, "Missing version in readMessageBegin, old client?"

    invoke-direct {v0, v3, v1}, Lu/aly/cz;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lu/aly/cw;

    invoke-virtual {p0, v1}, Lu/aly/cr;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v2

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cw;-><init>(Ljava/lang/String;BI)V

    goto :goto_0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Lu/aly/dd;
    .locals 1

    sget-object v0, Lu/aly/cr;->h:Lu/aly/dd;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()Lu/aly/ct;
    .locals 4

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lu/aly/ct;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lu/aly/cr;->v()S

    move-result v0

    goto :goto_0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Lu/aly/cv;
    .locals 4

    new-instance v0, Lu/aly/cv;

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v2

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cv;-><init>(BBI)V

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Lu/aly/cu;
    .locals 3

    new-instance v0, Lu/aly/cu;

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    return-object v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()Lu/aly/dc;
    .locals 3

    new-instance v0, Lu/aly/dc;

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/dc;-><init>(BI)V

    return-object v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lu/aly/cr;->u()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()B
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->h()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->f()[B

    move-result-object v0

    iget-object v1, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v1}, Lu/aly/dm;->g()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v1, v2}, Lu/aly/dm;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/cr;->m:[B

    invoke-direct {p0, v0, v1, v2}, Lu/aly/cr;->a([BII)I

    iget-object v0, p0, Lu/aly/cr;->m:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public v()S
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget-object v1, p0, Lu/aly/cr;->n:[B

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2}, Lu/aly/dm;->h()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->f()[B

    move-result-object v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->g()I

    move-result v0

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2, v3}, Lu/aly/dm;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v2, p0, Lu/aly/cr;->n:[B

    invoke-direct {p0, v2, v0, v3}, Lu/aly/cr;->a([BII)I

    goto :goto_0
.end method

.method public w()I
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lu/aly/cr;->o:[B

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2}, Lu/aly/dm;->h()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->f()[B

    move-result-object v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->g()I

    move-result v0

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2, v3}, Lu/aly/dm;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v2, p0, Lu/aly/cr;->o:[B

    invoke-direct {p0, v2, v0, v3}, Lu/aly/cr;->a([BII)I

    goto :goto_0
.end method

.method public x()J
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x8

    iget-object v1, p0, Lu/aly/cr;->p:[B

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2}, Lu/aly/dm;->h()I

    move-result v2

    if-lt v2, v7, :cond_0

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->f()[B

    move-result-object v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->g()I

    move-result v0

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2, v7}, Lu/aly/dm;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v2, p0, Lu/aly/cr;->p:[B

    invoke-direct {p0, v2, v0, v7}, Lu/aly/cr;->a([BII)I

    goto :goto_0
.end method

.method public y()D
    .locals 2

    invoke-virtual {p0}, Lu/aly/cr;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lu/aly/cr;->w()I

    move-result v1

    iget-object v0, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v0}, Lu/aly/dm;->h()I

    move-result v0

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2}, Lu/aly/dm;->f()[B

    move-result-object v2

    iget-object v3, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v3}, Lu/aly/dm;->g()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lu/aly/cr;->g:Lu/aly/dm;

    invoke-virtual {v2, v1}, Lu/aly/dm;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lu/aly/cf;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lu/aly/cr;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method