f1 = fea( 1,: ) ;
f1 = fea( 170,: ) ;
f1 = fea( 171,: ) ;
f1 = fea( 340,: ) ;

f1_reshaped = reshape( f1, [32, 32] ) ;

figure, imshow( f1_reshaped, [] ) ;
figure, imshow( f1_reshaped )


%% NORMALIZE 

n_total = size( fea, 1 ) ; % total # of data vectors (faces)
n_features = size( fea, 2 ) ; % # of features (pixels)

fea_normalized = zeros( n_total, n_features ) ; % pre-allocate normalized data matrix

for i = 1:1:n_total
    v = fea( i, : ) ; % retrieve ith vector (i.e, ith face)
    v = v / norm(v) ; % normalize to unit norm
    fea_normalized( i, : ) = v ;
end


COV_MATRIX = cov( fea_normalized(1:100,:) ) ;

VARIANCES = var( fea_normalized(1:100,:) ) ;
















